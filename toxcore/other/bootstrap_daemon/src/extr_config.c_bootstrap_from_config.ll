; ModuleID = '/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_config.c_bootstrap_from_config.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_config.c_bootstrap_from_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"bootstrap_nodes\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"public_key\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@CONFIG_FALSE = common dso_local global i64 0, align 8
@LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s:%d - %s\0A\00", align 1
@LOG_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"No '%s' setting in the configuration file. Skipping bootstrapping.\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"No bootstrap nodes found. Skipping bootstrapping.\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\0A\00", align 1
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Bootstrap node #%d: Invalid '%s': %s. Skipping the node.\0A\00", align 1
@MIN_ALLOWED_PORT = common dso_local global i32 0, align 4
@MAX_ALLOWED_PORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [81 x i8] c"Bootstrap node #%d: Invalid '%s': %d, should be in [%d, %d]. Skipping the node.\0A\00", align 1
@LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"Successfully added bootstrap node #%d: %s:%d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootstrap_from_config(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %21 = call i32 @config_init(i32* %12)
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @config_read_file(i32* %12, i8* %22)
  %24 = load i64, i64* @CONFIG_FALSE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %28 = call i32 @config_error_file(i32* %12)
  %29 = call i32 @config_error_line(i32* %12)
  %30 = call i32 @config_error_text(i32* %12)
  %31 = call i32 (i32, i8*, ...) @write_log(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = call i32 @config_destroy(i32* %12)
  store i32 0, i32* %4, align 4
  br label %158

33:                                               ; preds = %3
  %34 = load i8*, i8** %8, align 8
  %35 = call i32* @config_lookup(i32* %12, i8* %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i32, i8*, ...) @write_log(i32 %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = call i32 @config_destroy(i32* %12)
  store i32 1, i32* %4, align 4
  br label %158

43:                                               ; preds = %33
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @config_setting_length(i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %49 = call i32 (i32, i8*, ...) @write_log(i32 %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @config_destroy(i32* %12)
  store i32 1, i32* %4, align 4
  br label %158

51:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %151, %51
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @config_setting_length(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %156

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = call i32* @config_setting_get_elem(i32* %57, i32 0)
  store i32* %58, i32** %17, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @config_destroy(i32* %12)
  store i32 0, i32* %4, align 4
  br label %158

63:                                               ; preds = %56
  %64 = load i32*, i32** %17, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @config_setting_lookup_string(i32* %64, i8* %65, i8** %16)
  %67 = load i64, i64* @CONFIG_FALSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (i32, i8*, ...) @write_log(i32 %70, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %71, i8* %72)
  br label %151

74:                                               ; preds = %63
  %75 = load i32*, i32** %17, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @config_setting_lookup_int(i32* %75, i8* %76, i32* %14)
  %78 = load i64, i64* @CONFIG_FALSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (i32, i8*, ...) @write_log(i32 %81, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %82, i8* %83)
  br label %151

85:                                               ; preds = %74
  %86 = load i32*, i32** %17, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i64 @config_setting_lookup_string(i32* %86, i8* %87, i8** %15)
  %89 = load i64, i64* @CONFIG_FALSE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (i32, i8*, ...) @write_log(i32 %92, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %93, i8* %94)
  br label %151

96:                                               ; preds = %85
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %100 = mul nsw i32 %99, 2
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = call i32 (i32, i8*, ...) @write_log(i32 %103, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %104, i8* %105, i8* %106)
  br label %151

108:                                              ; preds = %96
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @MIN_ALLOWED_PORT, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @MAX_ALLOWED_PORT, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112, %108
  %117 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @MIN_ALLOWED_PORT, align 4
  %122 = load i32, i32* @MAX_ALLOWED_PORT, align 4
  %123 = call i32 (i32, i8*, ...) @write_log(i32 %117, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0), i32 %118, i8* %119, i32 %120, i32 %121, i32 %122)
  br label %151

124:                                              ; preds = %112
  %125 = load i8*, i8** %16, align 8
  %126 = call i32* @hex_string_to_bin(i8* %125)
  store i32* %126, i32** %19, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @htons(i32 %130)
  %132 = load i32*, i32** %19, align 8
  %133 = call i32 @DHT_bootstrap_from_address(i32* %127, i8* %128, i32 %129, i32 %131, i32* %132)
  store i32 %133, i32* %20, align 4
  %134 = load i32*, i32** %19, align 8
  %135 = call i32 @free(i32* %134)
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %124
  %139 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 (i32, i8*, ...) @write_log(i32 %139, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %140, i8* %141, i8* %142)
  br label %151

144:                                              ; preds = %124
  %145 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 (i32, i8*, ...) @write_log(i32 %145, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %146, i8* %147, i32 %148, i8* %149)
  br label %151

151:                                              ; preds = %144, %138, %116, %102, %91, %80, %69
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @config_setting_remove_elem(i32* %152, i32 0)
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  br label %52

156:                                              ; preds = %52
  %157 = call i32 @config_destroy(i32* %12)
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %61, %47, %38, %26
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @config_init(i32*) #1

declare dso_local i64 @config_read_file(i32*, i8*) #1

declare dso_local i32 @write_log(i32, i8*, ...) #1

declare dso_local i32 @config_error_file(i32*) #1

declare dso_local i32 @config_error_line(i32*) #1

declare dso_local i32 @config_error_text(i32*) #1

declare dso_local i32 @config_destroy(i32*) #1

declare dso_local i32* @config_lookup(i32*, i8*) #1

declare dso_local i64 @config_setting_length(i32*) #1

declare dso_local i32* @config_setting_get_elem(i32*, i32) #1

declare dso_local i64 @config_setting_lookup_string(i32*, i8*, i8**) #1

declare dso_local i64 @config_setting_lookup_int(i32*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @hex_string_to_bin(i8*) #1

declare dso_local i32 @DHT_bootstrap_from_address(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @config_setting_remove_elem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
