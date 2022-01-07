; ModuleID = '/home/carl/AnghaBench/wcdb/tools/extr_dbrepair.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/wcdb/tools/extr_dbrepair.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@g_cipher_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hvo:K:k:M:m:\00", align 1
@g_options = common dso_local global i32 0, align 4
@g_verbose = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@g_out_path = common dso_local global i8* null, align 8
@g_out_key = common dso_local global i8* null, align 8
@g_num_filter = common dso_local global i32 0, align 4
@g_filter_capacity = common dso_local global i32 0, align 4
@g_filter = common dso_local global i8** null, align 8
@g_save_master = common dso_local global i8* null, align 8
@g_load_master = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Version must be 1, 2 or 3\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Page size must be 512, 1024, 2048, ..., or 65536\00", align 1
@g_in_path = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"--save-master must be used without --load-master or --output.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Output path must be specified.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @usage(i8* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = call i32 @sqlcipher_set_default_kdf_iter(i32 4000)
  %18 = call i32 @sqlcipher_set_default_use_hmac(i32 0)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_cipher_conf, i32 0, i32 0), align 8
  store i32 1, i32* @optind, align 4
  br label %19

19:                                               ; preds = %142, %16
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* @g_options, align 4
  %23 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %143

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %137 [
    i32 104, label %27
    i32 118, label %32
    i32 111, label %33
    i32 75, label %35
    i32 107, label %37
    i32 102, label %41
    i32 77, label %75
    i32 109, label %77
    i32 256, label %79
    i32 257, label %105
  ]

27:                                               ; preds = %25
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @usage(i8* %30)
  br label %142

32:                                               ; preds = %25
  store i32 1, i32* @g_verbose, align 4
  br label %142

33:                                               ; preds = %25
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @g_out_path, align 8
  br label %142

35:                                               ; preds = %25
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @g_out_key, align 8
  br label %142

37:                                               ; preds = %25
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_cipher_conf, i32 0, i32 2), align 8
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_cipher_conf, i32 0, i32 1), align 4
  br label %142

41:                                               ; preds = %25
  %42 = load i32, i32* @g_num_filter, align 4
  %43 = load i32, i32* @g_filter_capacity, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* @g_filter_capacity, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @g_filter_capacity, align 4
  %50 = mul nsw i32 %49, 2
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 64, %51 ]
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  %55 = load i8**, i8*** @g_filter, align 8
  %56 = load i64, i64* %7, align 8
  %57 = mul i64 %56, 8
  %58 = call i8* @realloc(i8** %55, i64 %57)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call i32 @exit(i32 -5) #3
  unreachable

63:                                               ; preds = %52
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to i8**
  store i8** %65, i8*** @g_filter, align 8
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* @g_filter_capacity, align 4
  br label %68

68:                                               ; preds = %63, %41
  %69 = load i8*, i8** @optarg, align 8
  %70 = load i8**, i8*** @g_filter, align 8
  %71 = load i32, i32* @g_num_filter, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @g_num_filter, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  store i8* %69, i8** %74, align 8
  br label %142

75:                                               ; preds = %25
  %76 = load i8*, i8** @optarg, align 8
  store i8* %76, i8** @g_save_master, align 8
  br label %142

77:                                               ; preds = %25
  %78 = load i8*, i8** @optarg, align 8
  store i8* %78, i8** @g_load_master, align 8
  br label %142

79:                                               ; preds = %25
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i32 @atoi(i8* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = call i32 @sqlcipher_set_default_kdf_iter(i32 4000)
  %86 = call i32 @sqlcipher_set_default_use_hmac(i32 0)
  br label %104

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = call i32 @sqlcipher_set_default_kdf_iter(i32 4000)
  %92 = call i32 @sqlcipher_set_default_use_hmac(i32 1)
  br label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i32 @sqlcipher_set_default_kdf_iter(i32 64000)
  %98 = call i32 @sqlcipher_set_default_use_hmac(i32 1)
  br label %102

99:                                               ; preds = %93
  %100 = call i32 @LOGI(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @exit(i32 -1) #3
  unreachable

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %90
  br label %104

104:                                              ; preds = %103, %84
  br label %142

105:                                              ; preds = %25
  %106 = load i8*, i8** @optarg, align 8
  %107 = call i32 @atoi(i8* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 512
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 1024
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 2048
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 4096
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 8192
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 16384
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 32768
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 65536
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = call i32 @LOGI(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %133 = call i32 @exit(i32 -1) #3
  unreachable

134:                                              ; preds = %128, %125, %122, %119, %116, %113, %110, %105
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @sqlcipher_set_default_pagesize(i32 %135)
  br label %142

137:                                              ; preds = %25
  %138 = load i8**, i8*** %4, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @usage(i8* %140)
  br label %142

142:                                              ; preds = %137, %134, %104, %77, %75, %68, %37, %35, %33, %32, %27
  br label %19

143:                                              ; preds = %19
  %144 = load i32, i32* @optind, align 4
  %145 = load i32, i32* %3, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp ne i32 %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i8**, i8*** %4, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @usage(i8* %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i8**, i8*** %4, align 8
  %155 = load i32, i32* @optind, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @optind, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8*, i8** %154, i64 %157
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** @g_in_path, align 8
  %160 = load i8*, i8** @g_save_master, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %153
  %163 = load i8*, i8** @g_load_master, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i8*, i8** @g_out_path, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165, %162
  %169 = call i32 @LOGI(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i8**, i8*** %4, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @usage(i8* %172)
  br label %174

174:                                              ; preds = %168, %165, %153
  %175 = load i8*, i8** @g_out_path, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** @g_save_master, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = call i32 @LOGI(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i8**, i8*** %4, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @usage(i8* %184)
  br label %186

186:                                              ; preds = %180, %177, %174
  ret void
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @sqlcipher_set_default_kdf_iter(i32) #1

declare dso_local i32 @sqlcipher_set_default_use_hmac(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8**, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @LOGI(i8*) #1

declare dso_local i32 @sqlcipher_set_default_pagesize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
