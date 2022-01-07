; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_bitmap.c_create_dib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_bitmap.c_create_dib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CreateDIBSection(%dx%d,%d bpp) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"expected %d, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected 1, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, %struct.TYPE_13__*, i8*)* @create_dib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_dib(i32 %0, i32 %1, i32 %2, %struct.TYPE_13__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1076 x i8], align 16
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = getelementptr inbounds [1076 x i8], [1076 x i8]* %11, i64 0, i64 0
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %12, align 8
  %19 = getelementptr inbounds [1076 x i8], [1076 x i8]* %11, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 1076)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 48, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @BI_RGB, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %46, label %124

46:                                               ; preds = %5
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sle i32 %49, 256
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  store i64 0, i64* %16, align 8
  br label %53

53:                                               ; preds = %106, %46
  %54 = load i64, i64* %16, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %53
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i32 %67, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i32 %80, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i32 %93, i32* %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %60
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %16, align 8
  br label %53

109:                                              ; preds = %53
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 5
  store i64 %113, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 6
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %109, %5
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %126 = load i32, i32* @DIB_RGB_COLORS, align 4
  %127 = call i64 @CreateDIBSection(i32 0, %struct.TYPE_14__* %125, i32 %126, i8** %13, i32* null, i32 0)
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132, i32 %133)
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @GetObjectW(i64 %135, i32 20, %struct.TYPE_15__* %15)
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %6, align 4
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %7, align 4
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 1
  %158 = zext i1 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, i32, ...) @ok(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %8, align 4
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, i32, ...) @ok(i32 %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %169)
  %171 = load i8*, i8** %10, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %124
  %174 = load i8*, i8** %13, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %177, %179
  %181 = call i32 @memcpy(i8* %174, i8* %175, i32 %180)
  br label %182

182:                                              ; preds = %173, %124
  %183 = load i64, i64* %14, align 8
  ret i64 %183
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_14__*, i32, i8**, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
