; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_files.c_check_ini_file_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_files.c_check_ini_file_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_ini_file_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ini_file_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %7 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @GetFileAttributesA(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %18 = icmp ne i32 %16, %17
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ false, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %24 = call i32 @SetFileAttributesA(i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @GetFileAttributesA(i32) #1

declare dso_local i32 @SetFileAttributesA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
