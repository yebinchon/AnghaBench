; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_CAPMTBuild.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_CAPMTBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"no compatible scrambling system for SID %d on session %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i32, %struct.TYPE_10__*, i32, i32, i64*)* @CAPMTBuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CAPMTBuild(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3, i32 %4, i64* noalias %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @GetCADSize(i32* %32, i32 %35, i32 %38)
  store i64 %39, i64* %16, align 8
  store i64 %39, i64* %15, align 8
  store i64 0, i64* %18, align 8
  br label %40

40:                                               ; preds = %62, %6
  %41 = load i64, i64* %18, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i64, i64* %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %19, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @GetCADSize(i32* %52, i32 %55, i32 %58)
  %60 = load i64, i64* %15, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %46
  %63 = load i64, i64* %18, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %18, align 8
  br label %40

65:                                               ; preds = %40
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @msg_Warn(i32 %71, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  store i32* null, i32** %7, align 8
  br label %146

77:                                               ; preds = %65
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i64, i64* %16, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32* @CAPMTHeader(%struct.TYPE_10__* %78, i32* %79, i32 %80, i64 %81, i32 %82)
  store i32* %83, i32** %17, align 8
  %84 = load i64, i64* %16, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i64, i64* %16, align 8
  %88 = add i64 7, %87
  %89 = load i64*, i64** %13, align 8
  store i64 %88, i64* %89, align 8
  br label %92

90:                                               ; preds = %77
  %91 = load i64*, i64** %13, align 8
  store i64 6, i64* %91, align 8
  br label %92

92:                                               ; preds = %90, %86
  store i64 0, i64* %20, align 8
  br label %93

93:                                               ; preds = %141, %92
  %94 = load i64, i64* %20, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %144

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load i64, i64* %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %103
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %21, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @GetCADSize(i32* %105, i32 %108, i32 %111)
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %99
  %116 = load i64, i64* %16, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %115, %99
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i64*, i64** %13, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = call i32* @CAPMTES(%struct.TYPE_11__* %119, i32* %120, i64 %122, i64 %123, i32 %124, i32* %125)
  store i32* %126, i32** %17, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %118
  %130 = load i64, i64* %15, align 8
  %131 = add i64 6, %130
  %132 = load i64*, i64** %13, align 8
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %131
  store i64 %134, i64* %132, align 8
  br label %139

135:                                              ; preds = %118
  %136 = load i64*, i64** %13, align 8
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 5
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %135, %129
  br label %140

140:                                              ; preds = %139, %115
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %20, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %20, align 8
  br label %93

144:                                              ; preds = %93
  %145 = load i32*, i32** %17, align 8
  store i32* %145, i32** %7, align 8
  br label %146

146:                                              ; preds = %144, %68
  %147 = load i32*, i32** %7, align 8
  ret i32* %147
}

declare dso_local i64 @GetCADSize(i32*, i32, i32) #1

declare dso_local i32 @msg_Warn(i32, i8*, i32, i32) #1

declare dso_local i32* @CAPMTHeader(%struct.TYPE_10__*, i32*, i32, i64, i32) #1

declare dso_local i32* @CAPMTES(%struct.TYPE_11__*, i32*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
