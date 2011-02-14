#include FcnLib.ahk

loop 9
{
   file=temporary%A_Index%.ahk
   ;debugbool(IsFileEqual("template.ahk",file))
   if IsFileEqual("template.ahk",file)
   {
      ;debug(file)
      break
   }
}

if ForceWinFocusIfExist("(AHKs|No Name).*GVIM", "RegEx")
{
   Send, {ESC 6}
   Send, ^wl
   Send, {;}
   SendInput, split %file%{ENTER}{F2 2}
}
