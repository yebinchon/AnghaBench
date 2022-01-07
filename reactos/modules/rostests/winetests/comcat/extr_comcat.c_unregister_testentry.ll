; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comcat/extr_comcat.c_unregister_testentry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comcat/extr_comcat.c_unregister_testentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}\\Implemented Categories\\{deadcafe-0000-0000-0000-000000000000}\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}\\Implemented Categories\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unregister_testentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_testentry() #0 {
  %1 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %2 = call i32 @RegDeleteKeyA(i32 %1, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %4 = call i32 @RegDeleteKeyA(i32 %3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %6 = call i32 @RegDeleteKeyA(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
