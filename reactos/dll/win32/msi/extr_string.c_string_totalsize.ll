; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_string_totalsize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_string_totalsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"oops. element 0 has a string\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[%u] nonpersistent = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[%u] = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"data %u pool %u codepage %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64*, i64*)* @string_totalsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @string_totalsize(%struct.TYPE_5__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %17, %3
  %34 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i64*, i64** %6, align 8
  store i64 4, i64* %36, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 0, i64* %37, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %7, align 8
  br label %38

38:                                               ; preds = %149, %35
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %152

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @debugstr_wn(i64 %61, i64 %68)
  %70 = sext i32 %69 to i64
  %71 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %70)
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %72, align 8
  br label %148

75:                                               ; preds = %44
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %144

84:                                               ; preds = %75
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @debugstr_wn(i64 %92, i64 %99)
  %101 = sext i32 %100 to i64
  %102 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %85, i64 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = call i64 @WideCharToMultiByte(i32 %105, i32 0, i64 %112, i64 %120, i32* null, i32 0, i32* null, i32* null)
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %84
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %124, %84
  %128 = load i64, i64* %8, align 8
  %129 = load i64*, i64** %5, align 8
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp ugt i64 %132, 65535
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i64*, i64** %6, align 8
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %134, %127
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, 4
  %141 = load i64*, i64** %6, align 8
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %140
  store i64 %143, i64* %141, align 8
  store i64 0, i64* %9, align 8
  br label %147

144:                                              ; preds = %75
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %9, align 8
  br label %147

147:                                              ; preds = %144, %138
  br label %148

148:                                              ; preds = %147, %53
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %7, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %7, align 8
  br label %38

152:                                              ; preds = %38
  %153 = load i64*, i64** %5, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %6, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %154, i64 %156, i32 %159)
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i32 @debugstr_wn(i64, i64) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i64, i64, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
