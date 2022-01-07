; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-journal-importer.c_assert_iovec_entry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-journal-importer.c_assert_iovec_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec*, i8*)* @assert_iovec_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_iovec_entry(%struct.iovec* %0, i8* %1) #0 {
  %3 = alloca %struct.iovec*, align 8
  %4 = alloca i8*, align 8
  store %struct.iovec* %0, %struct.iovec** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = load %struct.iovec*, %struct.iovec** %3, align 8
  %8 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.iovec*, %struct.iovec** %3, align 8
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.iovec*, %struct.iovec** %3, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @memcmp(i8* %13, i32 %16, i64 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
