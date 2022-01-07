; ModuleID = '/home/carl/AnghaBench/wcdb/tools/extr_dbbackup.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/wcdb/tools/extr_dbbackup.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@DBBAK_OP_BACKUP = common dso_local global i32 0, align 4
@g_operation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@DBBAK_OP_RECOVER = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"vzZfFtTio:d:K:k:\00", align 1
@g_options = common dso_local global i32 0, align 4
@g_verbose = common dso_local global i32 0, align 4
@MMBAK_FLAG_NO_COMPRESS = common dso_local global i32 0, align 4
@g_flags = common dso_local global i32 0, align 4
@MMBAK_FLAG_FIX_CORRUPTION = common dso_local global i32 0, align 4
@MMBAK_FLAG_NO_CREATE_TABLE = common dso_local global i32 0, align 4
@MMBAK_FLAG_INCREMENTAL = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@g_dump_path = common dso_local global i8* null, align 8
@g_tabdesc_path = common dso_local global i8* null, align 8
@g_dbkey = common dso_local global i8* null, align 8
@g_key = common dso_local global i32* null, align 8
@MMBAK_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Version must be 1, 2 or 3\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Page size must be 512, 1024, 2048, ..., 65536\00", align 1
@g_db_path = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Output path must be specified.\00", align 1
@MMBAK_FLAG_NO_CIPHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @usage(i8* %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @DBBAK_OP_BACKUP, align 4
  store i32 %23, i32* @g_operation, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @DBBAK_OP_RECOVER, align 4
  store i32 %29, i32* @g_operation, align 4
  br label %35

30:                                               ; preds = %24
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @usage(i8* %33)
  br label %35

35:                                               ; preds = %30, %28
  br label %36

36:                                               ; preds = %35, %22
  %37 = call i32 @sqlcipher_set_default_kdf_iter(i32 4000)
  %38 = call i32 @sqlcipher_set_default_use_hmac(i32 0)
  store i32 2, i32* @optind, align 4
  br label %39

39:                                               ; preds = %153, %36
  %40 = load i32, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* @g_options, align 4
  %43 = call i32 @getopt_long(i32 %40, i8** %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32* null)
  store i32 %43, i32* %5, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %154

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %148 [
    i32 118, label %47
    i32 122, label %48
    i32 90, label %53
    i32 102, label %57
    i32 70, label %61
    i32 116, label %66
    i32 84, label %71
    i32 105, label %75
    i32 111, label %79
    i32 100, label %81
    i32 75, label %83
    i32 107, label %85
    i32 256, label %88
    i32 257, label %115
  ]

47:                                               ; preds = %45
  store i32 1, i32* @g_verbose, align 4
  br label %153

48:                                               ; preds = %45
  %49 = load i32, i32* @MMBAK_FLAG_NO_COMPRESS, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @g_flags, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @g_flags, align 4
  br label %153

53:                                               ; preds = %45
  %54 = load i32, i32* @MMBAK_FLAG_NO_COMPRESS, align 4
  %55 = load i32, i32* @g_flags, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @g_flags, align 4
  br label %153

57:                                               ; preds = %45
  %58 = load i32, i32* @MMBAK_FLAG_FIX_CORRUPTION, align 4
  %59 = load i32, i32* @g_flags, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @g_flags, align 4
  br label %153

61:                                               ; preds = %45
  %62 = load i32, i32* @MMBAK_FLAG_FIX_CORRUPTION, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* @g_flags, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* @g_flags, align 4
  br label %153

66:                                               ; preds = %45
  %67 = load i32, i32* @MMBAK_FLAG_NO_CREATE_TABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* @g_flags, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* @g_flags, align 4
  br label %153

71:                                               ; preds = %45
  %72 = load i32, i32* @MMBAK_FLAG_NO_CREATE_TABLE, align 4
  %73 = load i32, i32* @g_flags, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @g_flags, align 4
  br label %153

75:                                               ; preds = %45
  %76 = load i32, i32* @MMBAK_FLAG_INCREMENTAL, align 4
  %77 = load i32, i32* @g_flags, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* @g_flags, align 4
  br label %153

79:                                               ; preds = %45
  %80 = load i8*, i8** @optarg, align 8
  store i8* %80, i8** @g_dump_path, align 8
  br label %153

81:                                               ; preds = %45
  %82 = load i8*, i8** @optarg, align 8
  store i8* %82, i8** @g_tabdesc_path, align 8
  br label %153

83:                                               ; preds = %45
  %84 = load i8*, i8** @optarg, align 8
  store i8* %84, i8** @g_dbkey, align 8
  br label %153

85:                                               ; preds = %45
  %86 = load i8*, i8** @optarg, align 8
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** @g_key, align 8
  br label %153

88:                                               ; preds = %45
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i32 @atoi(i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = call i32 @sqlcipher_set_default_kdf_iter(i32 4000)
  %95 = call i32 @sqlcipher_set_default_use_hmac(i32 0)
  br label %114

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = call i32 @sqlcipher_set_default_kdf_iter(i32 4000)
  %101 = call i32 @sqlcipher_set_default_use_hmac(i32 1)
  br label %113

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = call i32 @sqlcipher_set_default_kdf_iter(i32 64000)
  %107 = call i32 @sqlcipher_set_default_use_hmac(i32 1)
  br label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @MMBAK_LOG_ERROR, align 4
  %110 = call i32 @print_log(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @exit(i32 -1) #3
  unreachable

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %93
  br label %153

115:                                              ; preds = %45
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i32 @atoi(i8* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 512
  br i1 %119, label %120, label %145

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 1024
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 2048
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 4096
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 8192
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 16384
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 32768
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 65536
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @MMBAK_LOG_ERROR, align 4
  %143 = call i32 @print_log(i32 %142, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %144 = call i32 @exit(i32 -1) #3
  unreachable

145:                                              ; preds = %138, %135, %132, %129, %126, %123, %120, %115
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @sqlcipher_set_default_pagesize(i32 %146)
  br label %153

148:                                              ; preds = %45
  %149 = load i8**, i8*** %4, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @usage(i8* %151)
  br label %153

153:                                              ; preds = %148, %145, %114, %85, %83, %81, %79, %75, %71, %66, %61, %57, %53, %48, %47
  br label %39

154:                                              ; preds = %39
  %155 = load i32, i32* @optind, align 4
  %156 = load i32, i32* %3, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp ne i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i8**, i8*** %4, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @usage(i8* %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i8**, i8*** %4, align 8
  %166 = load i32, i32* @optind, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @optind, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** @g_db_path, align 8
  %171 = load i8*, i8** @g_dump_path, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* @MMBAK_LOG_ERROR, align 4
  %175 = call i32 @print_log(i32 %174, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i8**, i8*** %4, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @usage(i8* %178)
  br label %180

180:                                              ; preds = %173, %164
  %181 = load i32*, i32** @g_key, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* @MMBAK_FLAG_NO_CIPHER, align 4
  %185 = load i32, i32* @g_flags, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* @g_flags, align 4
  br label %187

187:                                              ; preds = %183, %180
  ret void
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sqlcipher_set_default_kdf_iter(i32) #1

declare dso_local i32 @sqlcipher_set_default_use_hmac(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @print_log(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlcipher_set_default_pagesize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
