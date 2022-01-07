; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@WEBP_INFO_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-longhelp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-diag\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-summary\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"-bitstream_info\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"WebP Decoder version: %d.%d.%d\0A\00", align 1
@WEBP_INFO_INVALID_COMMAND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to open input file %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"File: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @WEBP_INFO_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @INIT_WARGV(i32 %17, i8** %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 (...) @HelpShort()
  %24 = load i32, i32* @WEBP_INFO_OK, align 4
  %25 = call i32 @FREE_WARGV_AND_RETURN(i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %135, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %138

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39, %31
  %48 = call i32 (...) @HelpShort()
  %49 = load i32, i32* @WEBP_INFO_OK, align 4
  %50 = call i32 @FREE_WARGV_AND_RETURN(i32 %49)
  br label %134

51:                                               ; preds = %39
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %59, %51
  %68 = call i32 (...) @HelpLong()
  %69 = load i32, i32* @WEBP_INFO_OK, align 4
  %70 = call i32 @FREE_WARGV_AND_RETURN(i32 %69)
  br label %133

71:                                               ; preds = %59
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %132

80:                                               ; preds = %71
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  br label %131

89:                                               ; preds = %80
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  store i32 1, i32* %9, align 4
  br label %130

98:                                               ; preds = %89
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  store i32 1, i32* %10, align 4
  br label %129

107:                                              ; preds = %98
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %107
  %116 = call i32 (...) @WebPGetDecoderVersion()
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = ashr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = load i32, i32* %13, align 4
  %121 = ashr i32 %120, 8
  %122 = and i32 %121, 255
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 255
  %125 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %119, i32 %122, i32 %124)
  %126 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %128

127:                                              ; preds = %107
  br label %138

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %106
  br label %130

130:                                              ; preds = %129, %97
  br label %131

131:                                              ; preds = %130, %88
  br label %132

132:                                              ; preds = %131, %79
  br label %133

133:                                              ; preds = %132, %67
  br label %134

134:                                              ; preds = %133, %47
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %27

138:                                              ; preds = %127, %27
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = call i32 (...) @HelpShort()
  %144 = load i32, i32* @WEBP_INFO_INVALID_COMMAND, align 4
  %145 = call i32 @FREE_WARGV_AND_RETURN(i32 %144)
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %186, %146
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %189

151:                                              ; preds = %147
  store i32* null, i32** %15, align 8
  %152 = call i32 @WebPInfoInit(%struct.TYPE_4__* %12)
  %153 = load i32, i32* %7, align 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %8, align 4
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %9, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %159, i32* %160, align 4
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32* @GET_WARGV(i8** %161, i32 %162)
  store i32* %163, i32** %15, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %151
  %167 = load i32*, i32** %15, align 8
  %168 = bitcast i32* %167 to i8*
  %169 = call i32 @ReadFileToWebPData(i8* %168, i32* %14)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %166, %151
  %172 = load i32, i32* @WEBP_INFO_INVALID_COMMAND, align 4
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* @stderr, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = call i32 @WFPRINTF(i32 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32* %174)
  br label %186

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = load i32*, i32** %15, align 8
  %182 = call i32 @WPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %181)
  br label %183

183:                                              ; preds = %180, %176
  %184 = call i32 @AnalyzeWebP(%struct.TYPE_4__* %12, i32* %14)
  store i32 %184, i32* %11, align 4
  %185 = call i32 @WebPDataClear(i32* %14)
  br label %186

186:                                              ; preds = %183, %171
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %147

189:                                              ; preds = %147
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @FREE_WARGV_AND_RETURN(i32 %190)
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @INIT_WARGV(i32, i8**) #1

declare dso_local i32 @HelpShort(...) #1

declare dso_local i32 @FREE_WARGV_AND_RETURN(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @HelpLong(...) #1

declare dso_local i32 @WebPGetDecoderVersion(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @WebPInfoInit(%struct.TYPE_4__*) #1

declare dso_local i32* @GET_WARGV(i8**, i32) #1

declare dso_local i32 @ReadFileToWebPData(i8*, i32*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local i32 @WPRINTF(i8*, i32*) #1

declare dso_local i32 @AnalyzeWebP(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @WebPDataClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
