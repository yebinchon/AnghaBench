; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_OutputLine_stub.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_OutputLine_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@CC_STUB = common dso_local global i64 0, align 8
@FL_STUB = common dso_local global i32 0, align 4
@gbTracing = common dso_local global i32 0, align 4
@CC_STDCALL = common dso_local global i64 0, align 8
@FL_NORELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@FL_REGISTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"void \00", align 1
@FL_RET64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"__int64 \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"int \00", align 1
@giArch = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"__stdcall \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"stub_function%d(\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.*s(\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"$relaytrace$%.*s(\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"void*\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"char*\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"wchar_t*\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"__int64\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"GUID\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" a%d\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c")\0A{\0A\09DbgPrint(\22WARNING: calling stub %.*s(\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c")\0A{\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\09__int64 retval;\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\09int retval;\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\09if (TRACE_ON(relay))\0A\09\09DPRINTF(\22%s: %.*s(\00", align 1
@pszDllName = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"0x%%lx\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"0x%%p\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"'%%s'\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"'%%ws'\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%%f\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"%%\22PRIx64\22\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c")\\n\22\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"(long)a%d\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"(void*)a%d\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"(char*)a%d\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"(wchar_t*)a%d\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"(double)a%d\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"(__int64)a%d\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"wine_dbgstr_guid(&a%d)\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"(float)a%d\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"\09__wine_spec_unimplemented_stub(\22%s\22, __FUNCTION__);\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"\09retval = \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"\09return 0;\0A}\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [77 x i8] c"\09if (TRACE_ON(relay))\0A\09\09DPRINTF(\22%s: %.*s: retval = %%\22PRIx64\22\\n\22, retval);\0A\00", align 1
@.str.47 = private unnamed_addr constant [73 x i8] c"\09if (TRACE_ON(relay))\0A\09\09DPRINTF(\22%s: %.*s: retval = 0x%%lx\\n\22, retval);\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"\09return retval;\0A}\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OutputLine_stub(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CC_STUB, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FL_STUB, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  %22 = load i32, i32* @gbTracing, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CC_STDCALL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FL_NORELAY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 63
  br i1 %45, label %46, label %47

46:                                               ; preds = %37, %30, %24, %21
  store i32 0, i32* %3, align 4
  br label %464

47:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %14, %2
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %195, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FL_REGISTER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %79

65:                                               ; preds = %55
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FL_RET64, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %78

75:                                               ; preds = %65
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i64, i64* @giArch, align 8
  %81 = load i64, i64* @ARCH_X86, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CC_STDCALL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %83, %79
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 63
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %136

107:                                              ; preds = %92
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110, %107
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %118, i8* %122)
  br label %135

124:                                              ; preds = %110
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %129, i8* %133)
  br label %135

135:                                              ; preds = %124, %113
  br label %136

136:                                              ; preds = %135, %101
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %185, %136
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %188

143:                                              ; preds = %137
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  switch i32 %156, label %181 [
    i32 131, label %157
    i32 130, label %160
    i32 129, label %163
    i32 128, label %166
    i32 135, label %169
    i32 132, label %172
    i32 133, label %175
    i32 134, label %178
  ]

157:                                              ; preds = %149
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %181

160:                                              ; preds = %149
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %181

163:                                              ; preds = %149
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %181

166:                                              ; preds = %149
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %181

169:                                              ; preds = %149
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %181

172:                                              ; preds = %149
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %181

175:                                              ; preds = %149
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %181

178:                                              ; preds = %149
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %181

181:                                              ; preds = %149, %178, %175, %172, %169, %166, %163, %160, %157
  %182 = load i32*, i32** %4, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %137

188:                                              ; preds = %137
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %8, align 4
  %198 = icmp ne i32 %196, 0
  br i1 %198, label %55, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %199
  %203 = load i32*, i32** %4, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i8* %207, i8* %211)
  br label %249

213:                                              ; preds = %199
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @FL_REGISTER, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %237

223:                                              ; preds = %213
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @FL_RET64, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 (i32*, i8*, ...) @fprintf(i32* %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %236

233:                                              ; preds = %223
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 (i32*, i8*, ...) @fprintf(i32* %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %230
  br label %237

237:                                              ; preds = %236, %222
  %238 = load i32*, i32** %4, align 8
  %239 = load i8*, i8** @pszDllName, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8* %239, i8* %243, i8* %247)
  br label %249

249:                                              ; preds = %237, %202
  store i32 0, i32* %6, align 4
  br label %250

250:                                              ; preds = %295, %249
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %298

256:                                              ; preds = %250
  %257 = load i32, i32* %6, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32*, i32** %4, align 8
  %261 = call i32 (i32*, i8*, ...) @fprintf(i32* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  switch i32 %269, label %294 [
    i32 131, label %270
    i32 130, label %273
    i32 129, label %276
    i32 128, label %279
    i32 135, label %282
    i32 132, label %285
    i32 133, label %288
    i32 134, label %291
  ]

270:                                              ; preds = %262
  %271 = load i32*, i32** %4, align 8
  %272 = call i32 (i32*, i8*, ...) @fprintf(i32* %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %294

273:                                              ; preds = %262
  %274 = load i32*, i32** %4, align 8
  %275 = call i32 (i32*, i8*, ...) @fprintf(i32* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  br label %294

276:                                              ; preds = %262
  %277 = load i32*, i32** %4, align 8
  %278 = call i32 (i32*, i8*, ...) @fprintf(i32* %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %294

279:                                              ; preds = %262
  %280 = load i32*, i32** %4, align 8
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %294

282:                                              ; preds = %262
  %283 = load i32*, i32** %4, align 8
  %284 = call i32 (i32*, i8*, ...) @fprintf(i32* %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  br label %294

285:                                              ; preds = %262
  %286 = load i32*, i32** %4, align 8
  %287 = call i32 (i32*, i8*, ...) @fprintf(i32* %286, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %294

288:                                              ; preds = %262
  %289 = load i32*, i32** %4, align 8
  %290 = call i32 (i32*, i8*, ...) @fprintf(i32* %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %294

291:                                              ; preds = %262
  %292 = load i32*, i32** %4, align 8
  %293 = call i32 (i32*, i8*, ...) @fprintf(i32* %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  br label %294

294:                                              ; preds = %262, %291, %288, %285, %282, %279, %276, %273, %270
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %250

298:                                              ; preds = %250
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 (i32*, i8*, ...) @fprintf(i32* %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %301

301:                                              ; preds = %350, %298
  %302 = load i32, i32* %6, align 4
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %353

307:                                              ; preds = %301
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 (i32*, i8*, ...) @fprintf(i32* %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 4
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  switch i32 %316, label %349 [
    i32 131, label %317
    i32 130, label %321
    i32 129, label %325
    i32 128, label %329
    i32 135, label %333
    i32 132, label %337
    i32 133, label %341
    i32 134, label %345
  ]

317:                                              ; preds = %307
  %318 = load i32*, i32** %4, align 8
  %319 = load i32, i32* %6, align 4
  %320 = call i32 (i32*, i8*, ...) @fprintf(i32* %318, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %319)
  br label %349

321:                                              ; preds = %307
  %322 = load i32*, i32** %4, align 8
  %323 = load i32, i32* %6, align 4
  %324 = call i32 (i32*, i8*, ...) @fprintf(i32* %322, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 %323)
  br label %349

325:                                              ; preds = %307
  %326 = load i32*, i32** %4, align 8
  %327 = load i32, i32* %6, align 4
  %328 = call i32 (i32*, i8*, ...) @fprintf(i32* %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i32 %327)
  br label %349

329:                                              ; preds = %307
  %330 = load i32*, i32** %4, align 8
  %331 = load i32, i32* %6, align 4
  %332 = call i32 (i32*, i8*, ...) @fprintf(i32* %330, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 %331)
  br label %349

333:                                              ; preds = %307
  %334 = load i32*, i32** %4, align 8
  %335 = load i32, i32* %6, align 4
  %336 = call i32 (i32*, i8*, ...) @fprintf(i32* %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %335)
  br label %349

337:                                              ; preds = %307
  %338 = load i32*, i32** %4, align 8
  %339 = load i32, i32* %6, align 4
  %340 = call i32 (i32*, i8*, ...) @fprintf(i32* %338, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 %339)
  br label %349

341:                                              ; preds = %307
  %342 = load i32*, i32** %4, align 8
  %343 = load i32, i32* %6, align 4
  %344 = call i32 (i32*, i8*, ...) @fprintf(i32* %342, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 %343)
  br label %349

345:                                              ; preds = %307
  %346 = load i32*, i32** %4, align 8
  %347 = load i32, i32* %6, align 4
  %348 = call i32 (i32*, i8*, ...) @fprintf(i32* %346, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i32 %347)
  br label %349

349:                                              ; preds = %307, %345, %341, %337, %333, %329, %325, %321, %317
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %6, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %6, align 4
  br label %301

353:                                              ; preds = %301
  %354 = load i32*, i32** %4, align 8
  %355 = call i32 (i32*, i8*, ...) @fprintf(i32* %354, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @CC_STUB, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %353
  %362 = load i32*, i32** %4, align 8
  %363 = load i8*, i8** @pszDllName, align 8
  %364 = call i32 (i32*, i8*, ...) @fprintf(i32* %362, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i64 0, i64 0), i8* %363)
  br label %415

365:                                              ; preds = %353
  %366 = load i32, i32* %7, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %414

368:                                              ; preds = %365
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @FL_REGISTER, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = load i32*, i32** %4, align 8
  %377 = call i32 (i32*, i8*, ...) @fprintf(i32* %376, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  br label %381

378:                                              ; preds = %368
  %379 = load i32*, i32** %4, align 8
  %380 = call i32 (i32*, i8*, ...) @fprintf(i32* %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0))
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i32*, i32** %4, align 8
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 (i32*, i8*, ...) @fprintf(i32* %382, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %386, i8* %390)
  store i32 0, i32* %6, align 4
  br label %392

392:                                              ; preds = %408, %381
  %393 = load i32, i32* %6, align 4
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 8
  %397 = icmp slt i32 %393, %396
  br i1 %397, label %398, label %411

398:                                              ; preds = %392
  %399 = load i32, i32* %6, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load i32*, i32** %4, align 8
  %403 = call i32 (i32*, i8*, ...) @fprintf(i32* %402, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %404

404:                                              ; preds = %401, %398
  %405 = load i32*, i32** %4, align 8
  %406 = load i32, i32* %6, align 4
  %407 = call i32 (i32*, i8*, ...) @fprintf(i32* %405, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %406)
  br label %408

408:                                              ; preds = %404
  %409 = load i32, i32* %6, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %6, align 4
  br label %392

411:                                              ; preds = %392
  %412 = load i32*, i32** %4, align 8
  %413 = call i32 (i32*, i8*, ...) @fprintf(i32* %412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  br label %414

414:                                              ; preds = %411, %365
  br label %415

415:                                              ; preds = %414, %361
  %416 = load i32, i32* %7, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %415
  %419 = load i32*, i32** %4, align 8
  %420 = call i32 (i32*, i8*, ...) @fprintf(i32* %419, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0))
  br label %463

421:                                              ; preds = %415
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @FL_REGISTER, align 4
  %426 = and i32 %424, %425
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %462

428:                                              ; preds = %421
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @FL_RET64, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %447

435:                                              ; preds = %428
  %436 = load i32*, i32** %4, align 8
  %437 = load i8*, i8** @pszDllName, align 8
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 1
  %441 = load i8*, i8** %440, align 8
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 (i32*, i8*, ...) @fprintf(i32* %436, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.46, i64 0, i64 0), i8* %437, i8* %441, i8* %445)
  br label %459

447:                                              ; preds = %428
  %448 = load i32*, i32** %4, align 8
  %449 = load i8*, i8** @pszDllName, align 8
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 1
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 0
  %457 = load i8*, i8** %456, align 8
  %458 = call i32 (i32*, i8*, ...) @fprintf(i32* %448, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.47, i64 0, i64 0), i8* %449, i8* %453, i8* %457)
  br label %459

459:                                              ; preds = %447, %435
  %460 = load i32*, i32** %4, align 8
  %461 = call i32 (i32*, i8*, ...) @fprintf(i32* %460, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0))
  br label %462

462:                                              ; preds = %459, %421
  br label %463

463:                                              ; preds = %462, %418
  store i32 1, i32* %3, align 4
  br label %464

464:                                              ; preds = %463, %46
  %465 = load i32, i32* %3, align 4
  ret i32 %465
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
