; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfabbrev.c_parseabbrevs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfabbrev.c_parseabbrevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"bad abbrev section offset 0x%lux >= 0x%lux\00", align 1
@nil = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"malformed abbrev data\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"abbrev: num %d tag %x @ %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32*)* @parseabbrevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseabbrevs(%struct.TYPE_16__* %0, i64 %1, %struct.TYPE_15__* %2, %struct.TYPE_14__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %23, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %34)
  store i32 -1, i32* %7, align 4
  br label %157

36:                                               ; preds = %6
  %37 = call i32 @memset(%struct.TYPE_13__* %22, i32 0, i32 16)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %138, %36
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @nil, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %157

62:                                               ; preds = %55
  %63 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %144

67:                                               ; preds = %62
  %68 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %72, %76
  %78 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %70, i64 %77)
  %79 = call i32 @dwarfget1(%struct.TYPE_13__* %22)
  store i32 %79, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %110, %67
  %81 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %81, i64* %20, align 8
  %82 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %82, i64* %21, align 8
  %83 = load i64, i64* %21, align 8
  %84 = icmp slt i64 %83, 12288
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i64, i64* %20, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i64, i64* %21, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %113

93:                                               ; preds = %89, %80
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i64, i64* %20, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i64 %97, i64* %102, align 8
  %103 = load i64, i64* %21, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  store i64 %103, i64* %108, align 8
  br label %109

109:                                              ; preds = %96, %93
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %80

113:                                              ; preds = %92
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %115 = icmp ne %struct.TYPE_15__* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %113
  %117 = load i64, i64* %18, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %128, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 1
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %10, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %136
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %11, align 8
  br label %138

138:                                              ; preds = %116, %113
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %16, align 4
  br label %55

144:                                              ; preds = %66
  %145 = load i32*, i32** %12, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %12, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %13, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %16, align 4
  %155 = load i32*, i32** %13, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %60, %29
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @dwarfget128(%struct.TYPE_13__*) #1

declare dso_local i32 @dwarfget1(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
