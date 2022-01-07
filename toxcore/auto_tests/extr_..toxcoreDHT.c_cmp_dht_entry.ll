; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_cmp_dht_entry.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_cmp_dht_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@HARDENING_ALL_OK = common dso_local global i64 0, align 8
@cmp_public_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_dht_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_dht_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @memcpy(%struct.TYPE_7__* %6, i8* %11, i32 20)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @memcpy(%struct.TYPE_7__* %7, i8* %13, i32 20)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %19 = call i64 @is_timeout(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %26 = call i64 @is_timeout(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %21, %2
  %29 = phi i1 [ false, %2 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %35 = call i64 @is_timeout(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %42 = call i64 @is_timeout(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %37, %28
  %45 = phi i1 [ false, %28 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %117

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %117

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %117

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i64 @hardening_correct(i32* %63)
  %65 = load i64, i64* @HARDENING_ALL_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i64 @hardening_correct(i32* %69)
  %71 = load i64, i64* @HARDENING_ALL_OK, align 8
  %72 = icmp ne i64 %70, %71
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i1 [ false, %61 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i64 @hardening_correct(i32* %77)
  %79 = load i64, i64* @HARDENING_ALL_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i64 @hardening_correct(i32* %83)
  %85 = load i64, i64* @HARDENING_ALL_OK, align 8
  %86 = icmp ne i64 %84, %85
  br label %87

87:                                               ; preds = %81, %73
  %88 = phi i1 [ false, %73 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %117

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %117

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* @cmp_public_key, align 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @id_closest(i32 %103, i32 %105, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %117

112:                                              ; preds = %102
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 -1, i32* %3, align 4
  br label %117

116:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %115, %111, %100, %96, %60, %56, %52
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i64 @hardening_correct(i32*) #1

declare dso_local i32 @id_closest(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
