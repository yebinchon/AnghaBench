; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/extr_nls.c_RfsdUnloadAllNls.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/extr_nls.c_RfsdUnloadAllNls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exit_nls_utf8 = common dso_local global i32 0, align 4
@exit_nls_big5 = common dso_local global i32 0, align 4
@exit_nls_cp1251 = common dso_local global i32 0, align 4
@exit_nls_cp1255 = common dso_local global i32 0, align 4
@exit_nls_cp437 = common dso_local global i32 0, align 4
@exit_nls_cp737 = common dso_local global i32 0, align 4
@exit_nls_cp775 = common dso_local global i32 0, align 4
@exit_nls_cp850 = common dso_local global i32 0, align 4
@exit_nls_cp852 = common dso_local global i32 0, align 4
@exit_nls_cp855 = common dso_local global i32 0, align 4
@exit_nls_cp857 = common dso_local global i32 0, align 4
@exit_nls_cp860 = common dso_local global i32 0, align 4
@exit_nls_cp861 = common dso_local global i32 0, align 4
@exit_nls_cp862 = common dso_local global i32 0, align 4
@exit_nls_cp863 = common dso_local global i32 0, align 4
@exit_nls_cp864 = common dso_local global i32 0, align 4
@exit_nls_cp865 = common dso_local global i32 0, align 4
@exit_nls_cp866 = common dso_local global i32 0, align 4
@exit_nls_cp869 = common dso_local global i32 0, align 4
@exit_nls_cp874 = common dso_local global i32 0, align 4
@exit_nls_cp932 = common dso_local global i32 0, align 4
@exit_nls_cp936 = common dso_local global i32 0, align 4
@exit_nls_cp949 = common dso_local global i32 0, align 4
@exit_nls_cp950 = common dso_local global i32 0, align 4
@exit_nls_euc_jp = common dso_local global i32 0, align 4
@exit_nls_euc_kr = common dso_local global i32 0, align 4
@exit_nls_gb2312 = common dso_local global i32 0, align 4
@exit_nls_iso8859_1 = common dso_local global i32 0, align 4
@exit_nls_iso8859_13 = common dso_local global i32 0, align 4
@exit_nls_iso8859_14 = common dso_local global i32 0, align 4
@exit_nls_iso8859_15 = common dso_local global i32 0, align 4
@exit_nls_iso8859_2 = common dso_local global i32 0, align 4
@exit_nls_iso8859_3 = common dso_local global i32 0, align 4
@exit_nls_iso8859_4 = common dso_local global i32 0, align 4
@exit_nls_iso8859_5 = common dso_local global i32 0, align 4
@exit_nls_iso8859_6 = common dso_local global i32 0, align 4
@exit_nls_iso8859_7 = common dso_local global i32 0, align 4
@exit_nls_iso8859_8 = common dso_local global i32 0, align 4
@exit_nls_iso8859_9 = common dso_local global i32 0, align 4
@exit_nls_koi8_r = common dso_local global i32 0, align 4
@exit_nls_koi8_ru = common dso_local global i32 0, align 4
@exit_nls_koi8_u = common dso_local global i32 0, align 4
@exit_nls_sjis = common dso_local global i32 0, align 4
@exit_nls_tis_620 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RfsdUnloadAllNls() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @exit_nls_utf8, align 4
  %3 = call i32 @UNLOAD_NLS(i32 %2)
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

declare dso_local i32 @UNLOAD_NLS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
