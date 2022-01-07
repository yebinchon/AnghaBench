; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fstab-util.c_test_fstab_find_pri.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fstab-util.c_test_fstab_find_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pri\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pri=11\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"opt,pri=12,opt\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"opt,opt,pri=12,pri=13\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fstab_find_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fstab_find_pri() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = call i32 @fstab_find_pri(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert_se(i32 %4)
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = call i32 @fstab_find_pri(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 11
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = call i32 @fstab_find_pri(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 12
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = call i32 @fstab_find_pri(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = icmp eq i32 %30, 13
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @fstab_find_pri(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
