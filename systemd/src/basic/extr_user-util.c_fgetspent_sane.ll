; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_fgetspent_sane.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_fgetspent_sane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spwd = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetspent_sane(%struct.spwd** %0, %struct.spwd** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spwd**, align 8
  %5 = alloca %struct.spwd**, align 8
  %6 = alloca %struct.spwd*, align 8
  store %struct.spwd** %0, %struct.spwd*** %4, align 8
  store %struct.spwd** %1, %struct.spwd*** %5, align 8
  %7 = load %struct.spwd**, %struct.spwd*** %5, align 8
  %8 = call i32 @assert(%struct.spwd** %7)
  %9 = load %struct.spwd**, %struct.spwd*** %4, align 8
  %10 = call i32 @assert(%struct.spwd** %9)
  store i64 0, i64* @errno, align 8
  %11 = load %struct.spwd**, %struct.spwd*** %4, align 8
  %12 = call %struct.spwd* @fgetspent(%struct.spwd** %11)
  store %struct.spwd* %12, %struct.spwd** %6, align 8
  %13 = load %struct.spwd*, %struct.spwd** %6, align 8
  %14 = icmp ne %struct.spwd* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOENT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EIO, align 4
  %21 = call i32 @errno_or_else(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %15, %2
  %23 = load %struct.spwd*, %struct.spwd** %6, align 8
  %24 = load %struct.spwd**, %struct.spwd*** %5, align 8
  store %struct.spwd* %23, %struct.spwd** %24, align 8
  %25 = load %struct.spwd*, %struct.spwd** %6, align 8
  %26 = icmp ne %struct.spwd* %25, null
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @assert(%struct.spwd**) #1

declare dso_local %struct.spwd* @fgetspent(%struct.spwd**) #1

declare dso_local i32 @errno_or_else(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
