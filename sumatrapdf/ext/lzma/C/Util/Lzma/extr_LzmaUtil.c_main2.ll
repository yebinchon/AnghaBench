; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/Lzma/extr_LzmaUtil.c_main2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/Lzma/extr_LzmaUtil.c_main2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@False = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Incorrect UInt32 or UInt64\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can not open input file\00", align 1
@True = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Can not open output file\00", align 1
@SZ_OK = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@kCantAllocateMessage = common dso_local global i8* null, align 8
@SZ_ERROR_DATA = common dso_local global i32 0, align 4
@kDataErrorMessage = common dso_local global i8* null, align 8
@SZ_ERROR_WRITE = common dso_local global i32 0, align 4
@kCantWriteMessage = common dso_local global i8* null, align 8
@SZ_ERROR_READ = common dso_local global i32 0, align 4
@kCantReadMessage = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main2(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i64, i64* @False, align 8
  store i64 %17, i64* %13, align 8
  %18 = call i32 @FileSeqInStream_CreateVTable(%struct.TYPE_5__* %8)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %20 = call i32 @File_Construct(i32* %19)
  %21 = call i32 @FileOutStream_CreateVTable(%struct.TYPE_6__* %9)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %23 = call i32 @File_Construct(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @PrintHelp(i8* %27)
  store i32 0, i32* %4, align 4
  br label %187

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %32, %29
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @PrintUserError(i8* %42)
  store i32 %43, i32* %4, align 4
  br label %187

44:                                               ; preds = %35
  %45 = load i8**, i8*** %6, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %10, align 1
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 101
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load i8, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 69
  br label %57

57:                                               ; preds = %53, %44
  %58 = phi i1 [ true, %44 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load i8, i8* %10, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 100
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @PrintUserError(i8* %71)
  store i32 %72, i32* %4, align 4
  br label %187

73:                                               ; preds = %66, %62, %57
  store i64 4, i64* %14, align 8
  store i64 4, i64* %15, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %15, align 8
  %78 = icmp ne i64 %77, 8
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %73
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @PrintError(i8* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %81, i32* %4, align 4
  br label %187

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %84 = load i8**, i8*** %6, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @InFile_Open(i32* %83, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @PrintError(i8* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %91, i32* %4, align 4
  br label %187

92:                                               ; preds = %82
  %93 = load i32, i32* %5, align 4
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i64, i64* @True, align 8
  store i64 %96, i64* %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @OutFile_Open(i32* %97, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @PrintError(i8* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 %105, i32* %4, align 4
  br label %187

106:                                              ; preds = %95
  br label %114

107:                                              ; preds = %92
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @PrintUserError(i8* %111)
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %106
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %119 = call i32 @File_GetLength(i32* %118, i32* %16)
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %122 = load i32, i32* %16, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @Encode(i32* %120, i32* %121, i32 %122, i8* %123)
  store i32 %124, i32* %11, align 4
  br label %135

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  br label %132

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32* [ %130, %129 ], [ null, %131 ]
  %134 = call i32 @Decode(i32* %126, i32* %133)
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %132, %117
  %136 = load i64, i64* %13, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %140 = call i32 @File_Close(i32* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %143 = call i32 @File_Close(i32* %142)
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @SZ_OK, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %186

147:                                              ; preds = %141
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @SZ_ERROR_MEM, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = load i8*, i8** @kCantAllocateMessage, align 8
  %154 = call i32 @PrintError(i8* %152, i8* %153)
  store i32 %154, i32* %4, align 4
  br label %187

155:                                              ; preds = %147
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @SZ_ERROR_DATA, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** @kDataErrorMessage, align 8
  %162 = call i32 @PrintError(i8* %160, i8* %161)
  store i32 %162, i32* %4, align 4
  br label %187

163:                                              ; preds = %155
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @SZ_ERROR_WRITE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8*, i8** %7, align 8
  %169 = load i8*, i8** @kCantWriteMessage, align 8
  %170 = call i32 @PrintError(i8* %168, i8* %169)
  store i32 %170, i32* %4, align 4
  br label %187

171:                                              ; preds = %163
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @SZ_ERROR_READ, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i8*, i8** %7, align 8
  %177 = load i8*, i8** @kCantReadMessage, align 8
  %178 = call i32 @PrintError(i8* %176, i8* %177)
  store i32 %178, i32* %4, align 4
  br label %187

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @PrintErrorNumber(i8* %183, i32 %184)
  store i32 %185, i32* %4, align 4
  br label %187

186:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %182, %175, %167, %159, %151, %103, %89, %79, %70, %41, %26
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @FileSeqInStream_CreateVTable(%struct.TYPE_5__*) #1

declare dso_local i32 @File_Construct(i32*) #1

declare dso_local i32 @FileOutStream_CreateVTable(%struct.TYPE_6__*) #1

declare dso_local i32 @PrintHelp(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @PrintUserError(i8*) #1

declare dso_local i32 @PrintError(i8*, i8*) #1

declare dso_local i64 @InFile_Open(i32*, i8*) #1

declare dso_local i64 @OutFile_Open(i32*, i8*) #1

declare dso_local i32 @File_GetLength(i32*, i32*) #1

declare dso_local i32 @Encode(i32*, i32*, i32, i8*) #1

declare dso_local i32 @Decode(i32*, i32*) #1

declare dso_local i32 @File_Close(i32*) #1

declare dso_local i32 @PrintErrorNumber(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
