; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_frommem.c_RosSymCreateFromMem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_frommem.c_RosSymCreateFromMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@IMAGE_SIZEOF_SHORT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Image doesn't have a valid DOS header\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Image doesn't have a valid PE header\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Image doesn't have valid section headers\0A\00", align 1
@ROSSYM_SECTION_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"No %s section found\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid %s section\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Bad %s section virtual size!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RosSymCreateFromMem(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = call i32 @ROSSYM_IS_VALID_DOS_HEADER(%struct.TYPE_14__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %3
  %31 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = bitcast i8* %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %33
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = call i32 @ROSSYM_IS_VALID_NT_HEADERS(%struct.TYPE_13__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %33
  %55 = call i32 @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

57:                                               ; preds = %50
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = call %struct.TYPE_12__* @IMAGE_FIRST_SECTION(%struct.TYPE_13__* %58)
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %66
  %68 = bitcast %struct.TYPE_12__* %67 to i8*
  %69 = load i64, i64* %5, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = icmp slt i32 %60, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

79:                                               ; preds = %57
  %80 = load i32, i32* @ROSSYM_SECTION_NAME, align 4
  %81 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %82 = call i32 @strncpy(i32* %20, i32 %80, i32 %81)
  store i64 0, i64* %11, align 8
  br label %83

83:                                               ; preds = %103, %79
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %84, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %96 = call i64 @memcmp(i32* %20, i32 %94, i32 %95)
  %97 = icmp eq i64 0, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %12, align 4
  br label %106

100:                                              ; preds = %91
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 1
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %10, align 8
  br label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %11, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %11, align 8
  br label %83

106:                                              ; preds = %98, %83
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @ROSSYM_SECTION_NAME, align 4
  %111 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = icmp slt i32 %114, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %113
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %123, %113
  %130 = load i32, i32* @ROSSYM_SECTION_NAME, align 4
  %131 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

133:                                              ; preds = %123
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %136, %140
  %142 = load i32, i32* %6, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %133
  %145 = load i32, i32* @ROSSYM_SECTION_NAME, align 4
  %146 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

148:                                              ; preds = %133
  %149 = load i64, i64* %5, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @RosSymCreateFromRaw(i8* %155, i32 %158, i32* %159)
  store i32 %160, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %161

161:                                              ; preds = %148, %144, %129, %109, %76, %54, %30
  %162 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ROSSYM_IS_VALID_DOS_HEADER(%struct.TYPE_14__*) #2

declare dso_local i32 @DPRINT1(i8*) #2

declare dso_local i32 @ROSSYM_IS_VALID_NT_HEADERS(%struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_12__* @IMAGE_FIRST_SECTION(%struct.TYPE_13__*) #2

declare dso_local i32 @strncpy(i32*, i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

declare dso_local i32 @DPRINT(i8*, i32) #2

declare dso_local i32 @RosSymCreateFromRaw(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
