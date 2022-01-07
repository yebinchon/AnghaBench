; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintCaption.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintCaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.PrintCaption.title = private unnamed_addr constant [45 x i8] c" PrivateICE system level debugger (REACTOS) \00", align 16
@COLOR_TEXT = common dso_local global i32 0, align 4
@COLOR_CAPTION = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintCaption() #0 {
  %1 = alloca [45 x i8], align 16
  %2 = bitcast [45 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 getelementptr inbounds ([45 x i8], [45 x i8]* @__const.PrintCaption.title, i32 0, i32 0), i64 45, i1 false)
  %3 = load i32, i32* @COLOR_TEXT, align 4
  %4 = call i32 @SetForegroundColor(i32 %3)
  %5 = load i32, i32* @COLOR_CAPTION, align 4
  %6 = call i32 @SetBackgroundColor(i32 %5)
  %7 = call i32 @ClrLine(i32 0)
  %8 = getelementptr inbounds [45 x i8], [45 x i8]* %1, i64 0, i64 0
  %9 = ptrtoint i8* %8 to i32
  %10 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 45
  %13 = udiv i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = call i32 @PutChar(i32 %9, i32 %14, i32 0)
  %16 = call i32 (...) @ResetColor()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetForegroundColor(i32) #2

declare dso_local i32 @SetBackgroundColor(i32) #2

declare dso_local i32 @ClrLine(i32) #2

declare dso_local i32 @PutChar(i32, i32, i32) #2

declare dso_local i32 @ResetColor(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
