; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THDiskFile.c_THDiskFile_readString.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THDiskFile.c_THDiskFile_readString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"attempt to read in a write-only file\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"format must be '*a' or '*l'\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"read error: read 0 blocks instead of 1\00", align 1
@TBRS_BSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8**)* @THDiskFile_readString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @THDiskFile_readString(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @THArgCheck(i32 %22, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @THArgCheck(i32 %27, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %55

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 97
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 108
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ true, %38 ], [ %49, %44 ]
  br label %52

52:                                               ; preds = %50, %32
  %53 = phi i1 [ false, %32 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  br label %56

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  %58 = call i32 @THArgCheck(i32 %57, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 97
  br i1 %63, label %64, label %116

64:                                               ; preds = %56
  %65 = call i8* @THAlloc(i64 1024)
  store i8* %65, i8** %9, align 8
  store i64 1024, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %115, %64
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1024
  store i64 %73, i64* %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i8* @THRealloc(i8* %74, i64 %75)
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = sub i64 %81, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @fread(i8* %80, i32 1, i64 %83, i32* %86)
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %77
  %94 = load i64, i64* %11, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @THFree(i8* %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  %108 = call i32 @THError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %96
  %110 = load i8**, i8*** %7, align 8
  store i8* null, i8** %110, align 8
  store i64 0, i64* %4, align 8
  br label %194

111:                                              ; preds = %93
  %112 = load i8*, i8** %9, align 8
  %113 = load i8**, i8*** %7, align 8
  store i8* %112, i8** %113, align 8
  %114 = load i64, i64* %11, align 8
  store i64 %114, i64* %4, align 8
  br label %194

115:                                              ; preds = %77
  br label %66

116:                                              ; preds = %56
  %117 = call i8* @THAlloc(i64 1024)
  store i8* %117, i8** %12, align 8
  store i64 1024, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %118

118:                                              ; preds = %193, %116
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %14, align 8
  %121 = sub i64 %119, %120
  %122 = icmp ule i64 %121, 1
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, 1024
  store i64 %125, i64* %13, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i8* @THRealloc(i8* %126, i64 %127)
  store i8* %128, i8** %12, align 8
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %14, align 8
  %135 = sub i64 %133, %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32* @fgets(i8* %132, i64 %135, i32* %138)
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %163

141:                                              ; preds = %129
  %142 = load i64, i64* %14, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @THFree(i8* %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %144
  %156 = call i32 @THError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %144
  %158 = load i8**, i8*** %7, align 8
  store i8* null, i8** %158, align 8
  store i64 0, i64* %4, align 8
  br label %194

159:                                              ; preds = %141
  %160 = load i8*, i8** %12, align 8
  %161 = load i8**, i8*** %7, align 8
  store i8* %160, i8** %161, align 8
  %162 = load i64, i64* %14, align 8
  store i64 %162, i64* %4, align 8
  br label %194

163:                                              ; preds = %129
  %164 = load i8*, i8** %12, align 8
  %165 = load i64, i64* %14, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = call i32 @strlen(i8* %166)
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %163
  %172 = load i8*, i8** %12, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i64, i64* %15, align 8
  %176 = sub i64 %175, 1
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 10
  br i1 %180, label %181, label %185

181:                                              ; preds = %171, %163
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* %14, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %14, align 8
  br label %193

185:                                              ; preds = %171
  %186 = load i64, i64* %15, align 8
  %187 = sub i64 %186, 1
  %188 = load i64, i64* %14, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %14, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = load i8**, i8*** %7, align 8
  store i8* %190, i8** %191, align 8
  %192 = load i64, i64* %14, align 8
  store i64 %192, i64* %4, align 8
  br label %194

193:                                              ; preds = %181
  br label %118

194:                                              ; preds = %185, %159, %157, %111, %109
  %195 = load i64, i64* %4, align 8
  ret i64 %195
}

declare dso_local i32 @THArgCheck(i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @THAlloc(i64) #1

declare dso_local i8* @THRealloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @THFree(i8*) #1

declare dso_local i32 @THError(i8*) #1

declare dso_local i32* @fgets(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
