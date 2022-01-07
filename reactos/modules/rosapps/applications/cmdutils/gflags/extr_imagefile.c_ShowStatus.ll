; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_imagefile.c_ShowStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_imagefile.c_ShowStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i32] [i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 32, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 32, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 32, i32 101, i32 120, i32 101, i32 99, i32 117, i32 116, i32 97, i32 98, i32 108, i32 101, i32 32, i32 97, i32 114, i32 101, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@ImageFile = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i32] [i32 78, i32 111, i32 32, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 32, i32 83, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 115, i32 32, i32 101, i32 120, i32 101, i32 99, i32 117, i32 116, i32 97, i32 98, i32 108, i32 101, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [43 x i32] [i32 84, i32 104, i32 101, i32 32, i32 102, i32 111, i32 108, i32 108, i32 111, i32 119, i32 105, i32 110, i32 103, i32 32, i32 115, i32 101, i32 116, i32 116, i32 105, i32 110, i32 103, i32 115, i32 32, i32 119, i32 101, i32 114, i32 101, i32 32, i32 105, i32 103, i32 110, i32 111, i32 114, i32 101, i32 100, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ShowStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowStatus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i8*, i8** @ImageFile, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i8*, ...) @wprintf(i8* bitcast ([55 x i32]* @.str to i8*), i8* %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @PrintFlags(i32 %11, i32 0)
  br label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** @ImageFile, align 8
  %15 = call i32 (i8*, ...) @wprintf(i8* bitcast ([40 x i32]* @.str.1 to i8*), i8* %14)
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, ...) @wprintf(i8* bitcast ([43 x i32]* @.str.2 to i8*), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @PrintFlags(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @PrintFlags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
