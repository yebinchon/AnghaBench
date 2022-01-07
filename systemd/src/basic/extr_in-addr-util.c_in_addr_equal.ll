; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_equal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_addr_equal(i32 %0, %union.in_addr_union* %1, %union.in_addr_union* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.in_addr_union*, align 8
  %7 = alloca %union.in_addr_union*, align 8
  store i32 %0, i32* %5, align 4
  store %union.in_addr_union* %1, %union.in_addr_union** %6, align 8
  store %union.in_addr_union* %2, %union.in_addr_union** %7, align 8
  %8 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %9 = call i32 @assert(%union.in_addr_union* %8)
  %10 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %11 = call i32 @assert(%union.in_addr_union* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %17 = bitcast %union.in_addr_union* %16 to i32*
  %18 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %19 = bitcast %union.in_addr_union* %18 to i32*
  %20 = call i32 @in4_addr_equal(i32* %17, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %27 = bitcast %union.in_addr_union* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %33 = bitcast %union.in_addr_union* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %25
  %40 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %41 = bitcast %union.in_addr_union* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %47 = bitcast %union.in_addr_union* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %39
  %54 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %55 = bitcast %union.in_addr_union* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %61 = bitcast %union.in_addr_union* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %59, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %53
  %68 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %69 = bitcast %union.in_addr_union* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %75 = bitcast %union.in_addr_union* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %73, %79
  br label %81

81:                                               ; preds = %67, %53, %39, %25
  %82 = phi i1 [ false, %53 ], [ false, %39 ], [ false, %25 ], [ %80, %67 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %87

84:                                               ; preds = %21
  %85 = load i32, i32* @EAFNOSUPPORT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %81, %15
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @assert(%union.in_addr_union*) #1

declare dso_local i32 @in4_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
