; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_beforeselect.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_beforeselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.pollfd = type { i32, i32 }

@MAX_POLLFDS = common dso_local global i32 0, align 4
@cc_entex = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns_beforeselect(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.timeval** %5, %struct.timeval* %6, %struct.timeval* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.timeval**, align 8
  %15 = alloca %struct.timeval*, align 8
  %16 = alloca %struct.timeval*, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.timeval** %5, %struct.timeval*** %14, align 8
  store %struct.timeval* %6, %struct.timeval** %15, align 8
  store %struct.timeval* %7, %struct.timeval** %16, align 8
  %24 = load i32, i32* @MAX_POLLFDS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca %struct.pollfd, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @cc_entex, align 4
  %30 = call i32 @adns__consistency(i32 %28, i32 0, i32 %29)
  %31 = load %struct.timeval**, %struct.timeval*** %14, align 8
  %32 = icmp ne %struct.timeval** %31, null
  br i1 %32, label %33, label %69

33:                                               ; preds = %8
  %34 = load %struct.timeval**, %struct.timeval*** %14, align 8
  %35 = load %struct.timeval*, %struct.timeval** %34, align 8
  %36 = icmp ne %struct.timeval* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.timeval**, %struct.timeval*** %14, align 8
  %39 = load %struct.timeval*, %struct.timeval** %38, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.timeval**, %struct.timeval*** %14, align 8
  %45 = load %struct.timeval*, %struct.timeval** %44, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %43, %37, %33
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @adns__must_gettimeofday(i32 %50, %struct.timeval** %16, %struct.timeval* %17)
  %52 = load %struct.timeval*, %struct.timeval** %16, align 8
  %53 = icmp ne %struct.timeval* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct.timeval**, %struct.timeval*** %14, align 8
  %56 = load %struct.timeval*, %struct.timeval** %15, align 8
  %57 = call i32 @inter_immed(%struct.timeval** %55, %struct.timeval* %56)
  br label %136

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.timeval**, %struct.timeval*** %14, align 8
  %61 = load %struct.timeval*, %struct.timeval** %15, align 8
  %62 = load %struct.timeval*, %struct.timeval** %16, align 8
  %63 = bitcast %struct.timeval* %62 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @adns__timeouts(i32 %59, i32 0, %struct.timeval** %60, %struct.timeval* %61, i64 %65, i64 %67)
  br label %69

69:                                               ; preds = %58, %43, %8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @adns__pollfds(i32 %70, %struct.pollfd* %27)
  store i32 %71, i32* %22, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %130, %69
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i64 %80
  %82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %23, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %21, align 4
  br label %90

90:                                               ; preds = %87, %78
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i64 %92
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @POLLIN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* %23, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @FD_SET(i32 %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i64 %105
  %107 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @POLLOUT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* %23, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @FD_SET(i32 %113, i32* %114)
  br label %116

116:                                              ; preds = %112, %103
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i64 %118
  %120 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @POLLPRI, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* %23, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @FD_SET(i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %125, %116
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %20, align 4
  br label %74

133:                                              ; preds = %74
  %134 = load i32, i32* %21, align 4
  %135 = load i32*, i32** %10, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %54
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @cc_entex, align 4
  %139 = call i32 @adns__consistency(i32 %137, i32 0, i32 %138)
  %140 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %140)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @adns__consistency(i32, i32, i32) #2

declare dso_local i32 @adns__must_gettimeofday(i32, %struct.timeval**, %struct.timeval*) #2

declare dso_local i32 @inter_immed(%struct.timeval**, %struct.timeval*) #2

declare dso_local i32 @adns__timeouts(i32, i32, %struct.timeval**, %struct.timeval*, i64, i64) #2

declare dso_local i32 @adns__pollfds(i32, %struct.pollfd*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
