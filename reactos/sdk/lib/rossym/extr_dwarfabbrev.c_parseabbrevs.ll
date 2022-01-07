; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfabbrev.c_parseabbrevs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfabbrev.c_parseabbrevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"bad abbrev section offset 0x%lux >= 0x%lux\0A\00", align 1
@nil = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"malformed abbrev data\00", align 1
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
  %35 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %34)
  store i32 -1, i32* %7, align 4
  br label %143

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

55:                                               ; preds = %124, %36
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @nil, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %143

62:                                               ; preds = %55
  %63 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %130

67:                                               ; preds = %62
  %68 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %68, i64* %19, align 8
  %69 = call i32 @dwarfget1(%struct.TYPE_13__* %22)
  store i32 %69, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %96, %67
  %71 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %71, i64* %20, align 8
  %72 = call i64 @dwarfget128(%struct.TYPE_13__* %22)
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %20, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* %21, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %99

79:                                               ; preds = %75, %70
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i64, i64* %20, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i64 %83, i64* %88, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i64 %89, i64* %94, align 8
  br label %95

95:                                               ; preds = %82, %79
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %70

99:                                               ; preds = %78
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = icmp ne %struct.TYPE_15__* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i64, i64* %18, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 1
  store %struct.TYPE_15__* %119, %struct.TYPE_15__** %10, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %122
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %11, align 8
  br label %124

124:                                              ; preds = %102, %99
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %16, align 4
  br label %55

130:                                              ; preds = %66
  %131 = load i32*, i32** %12, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %12, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %13, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %16, align 4
  %141 = load i32*, i32** %13, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %142, %60, %29
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @dwarfget128(%struct.TYPE_13__*) #1

declare dso_local i32 @dwarfget1(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
