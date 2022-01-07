; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_parse_cmdline_decoder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_parse_cmdline_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_9__ = type { i64, i8*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ImgDir\00", align 1
@REQ_ARG = common dso_local global i32 0, align 4
@__const.parse_cmdline_decoder.optlist = private unnamed_addr constant [9 x i8] c"i:o:f:hv\00", align 1
@opj_optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"[ERROR] Unknown input file format: %s \0A        Known file formats are *.j2k, *.jp2, *.jpc or *.jpt\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"[ERROR] Path is too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"[WARNING] An invalid option has been ignored.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"[ERROR] options -ImgDir and -i cannot be used together.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"[ERROR] When -ImgDir is used, -OutFor <FORMAT> must be used.\0A\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"Only one format allowed.\0AValid format are PGM, PPM, PNM, PGX, BMP, TIF, RAW and TGA.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"[ERROR] options -ImgDir and -o cannot be used together\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"[ERROR] Required parameter is missing\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Example: %s -i image.j2k\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"   Help: %s -h\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.TYPE_8__*, %struct.TYPE_9__*)* @parse_cmdline_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline_decoder(i32 %0, i8** %1, %struct.TYPE_8__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.TYPE_7__], align 16
  %13 = alloca [9 x i8], align 1
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %15 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %12, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %18 = load i32, i32* @REQ_ARG, align 4
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32* null, i32** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 121, i32* %21, align 8
  %22 = bitcast [9 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.parse_cmdline_decoder.optlist, i32 0, i32 0), i64 9, i1 false)
  store i32 32, i32* %10, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %110, %4
  %26 = load i32, i32* %6, align 4
  %27 = load i8**, i8*** %7, align 8
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %29 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %12, i64 0, i64 0
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @opj_getopt_long(i32 %26, i8** %27, i8* %28, %struct.TYPE_7__* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %113

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %106 [
    i32 105, label %37
    i32 111, label %64
    i32 102, label %75
    i32 104, label %80
    i32 121, label %82
    i32 118, label %103
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** @opj_optarg, align 8
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @infile_format(i8* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %49 [
    i32 130, label %46
    i32 129, label %47
    i32 128, label %48
  ]

46:                                               ; preds = %37
  br label %53

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %37
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 1, i32* %5, align 4
  br label %171

53:                                               ; preds = %48, %47, %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @opj_strcpy_s(i64* %56, i32 8, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %171

63:                                               ; preds = %53
  br label %109

64:                                               ; preds = %35
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i8*, i8** @opj_optarg, align 8
  %69 = call i32 @opj_strcpy_s(i64* %67, i32 8, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %171

74:                                               ; preds = %64
  br label %109

75:                                               ; preds = %35
  %76 = load i8*, i8** @opj_optarg, align 8
  %77 = call i32 @atoi(i8* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %109

80:                                               ; preds = %35
  %81 = call i32 (...) @decode_help_display()
  store i32 1, i32* %5, align 4
  br label %171

82:                                               ; preds = %35
  %83 = load i8*, i8** @opj_optarg, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 %84, 1
  %86 = call i64 @malloc(i32 %85)
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %171

95:                                               ; preds = %82
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @opj_optarg, align 8
  %100 = call i32 @strcpy(i8* %98, i8* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  br label %109

103:                                              ; preds = %35
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %109

106:                                              ; preds = %35
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %103, %95, %75, %74, %63
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %25, label %113

113:                                              ; preds = %110, %34
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %149

118:                                              ; preds = %113
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %171

128:                                              ; preds = %118
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @stderr, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %171

138:                                              ; preds = %128
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %171

148:                                              ; preds = %138
  br label %170

149:                                              ; preds = %113
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %149
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* @stderr, align 4
  %160 = load i8**, i8*** %7, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8**, i8*** %7, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %167)
  store i32 1, i32* %5, align 4
  br label %171

169:                                              ; preds = %149
  br label %170

170:                                              ; preds = %169, %148
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %156, %145, %133, %125, %94, %80, %71, %60, %49
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @opj_getopt_long(i32, i8**, i8*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @infile_format(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @opj_strcpy_s(i64*, i32, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @decode_help_display(...) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
