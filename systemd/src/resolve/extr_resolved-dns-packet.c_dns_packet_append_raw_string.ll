; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.c_dns_packet_append_raw_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.c_dns_packet_append_raw_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_packet_append_raw_string(i32* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ true, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @assert(i32* %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %52

30:                                               ; preds = %19
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 1, %32
  %34 = trunc i64 %33 to i32
  %35 = load i64*, i64** %9, align 8
  %36 = call i32 @dns_packet_extend(i32* %31, i32 %34, i8** %10, i64* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %30
  %42 = load i64, i64* %8, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to i64*
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %42, i64* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = bitcast i8* %46 to i64*
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy_safe(i64* %48, i8* %49, i64 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %41, %39, %27
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @dns_packet_extend(i32*, i32, i8**, i64*) #1

declare dso_local i32 @memcpy_safe(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
