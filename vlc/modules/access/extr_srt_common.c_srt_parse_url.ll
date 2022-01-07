; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_srt_common.c_srt_parse_url.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_srt_common.c_srt_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32 }
%struct.parsed_param = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@SRT_PARAM_LATENCY = common dso_local global i32 0, align 4
@SRT_PARAM_PASSPHRASE = common dso_local global i32 0, align 4
@SRT_PARAM_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@SRT_PARAM_KEY_LENGTH = common dso_local global i32 0, align 4
@srt_key_lengths = common dso_local global i32* null, align 8
@SRT_PARAM_BANDWIDTH_OVERHEAD_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srt_parse_url(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x %struct.parsed_param], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %18, %2
  store i32 0, i32* %3, align 4
  br label %178

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* null, i8** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 -1, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 -1, i32* %37, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @find(i8* %38, i8 signext 63)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %176

42:                                               ; preds = %27
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 0
  %45 = call i32 @srt_url_parse_query(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.parsed_param* %44, i32 32)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %175

48:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %171, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %174

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.parsed_param, %struct.parsed_param* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 16
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %171

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.parsed_param, %struct.parsed_param* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SRT_PARAM_LATENCY, align 4
  %69 = call i64 @strcmp(i32 %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %62
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @atoi(i8* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %71
  br label %170

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.parsed_param, %struct.parsed_param* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SRT_PARAM_PASSPHRASE, align 4
  %88 = call i64 @strcmp(i32 %86, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %169

94:                                               ; preds = %81
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.parsed_param, %struct.parsed_param* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SRT_PARAM_PAYLOAD_SIZE, align 4
  %101 = call i64 @strcmp(i32 %99, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %94
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @atoi(i8* %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %103
  br label %168

113:                                              ; preds = %94
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.parsed_param, %struct.parsed_param* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SRT_PARAM_KEY_LENGTH, align 4
  %120 = call i64 @strcmp(i32 %118, i32 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %113
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @atoi(i8* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** @srt_key_lengths, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** @srt_key_lengths, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  %138 = load i32*, i32** @srt_key_lengths, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136, %130, %122
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %136
  br label %167

147:                                              ; preds = %113
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [32 x %struct.parsed_param], [32 x %struct.parsed_param]* %7, i64 0, i64 %149
  %151 = getelementptr inbounds %struct.parsed_param, %struct.parsed_param* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SRT_PARAM_BANDWIDTH_OVERHEAD_LIMIT, align 4
  %154 = call i64 @strcmp(i32 %152, i32 %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %147
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @atoi(i8* %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %156
  br label %166

166:                                              ; preds = %165, %147
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %112
  br label %169

169:                                              ; preds = %168, %90
  br label %170

170:                                              ; preds = %169, %80
  br label %171

171:                                              ; preds = %170, %61
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %49

174:                                              ; preds = %49
  br label %175

175:                                              ; preds = %174, %42
  br label %176

176:                                              ; preds = %175, %27
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %26
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i8* @find(i8*, i8 signext) #1

declare dso_local i32 @srt_url_parse_query(i8*, i8*, %struct.parsed_param*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
