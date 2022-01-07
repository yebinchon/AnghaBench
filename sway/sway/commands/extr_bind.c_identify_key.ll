; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_identify_key.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_identify_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }

@BINDING_MOUSECODE = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown button code %s\00", align 1
@BINDING_MOUSESYM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown button %s\00", align 1
@BINDING_KEYCODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid keycode or button code '%s'\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid keycode '%s'\00", align 1
@XKB_KEYSYM_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown key or button '%s'\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Unknown key '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i8*, i32, i64*, i32*)* @identify_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @identify_key(i8* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cmd_results*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cmd_results*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.cmd_results*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BINDING_MOUSECODE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %4
  store i8* null, i8** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @get_mouse_bindcode(i8* %28, i8** %10)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @CMD_INVALID, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %36, i8* %37)
  store %struct.cmd_results* %38, %struct.cmd_results** %12, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  store %struct.cmd_results* %41, %struct.cmd_results** %5, align 8
  br label %170

42:                                               ; preds = %32
  %43 = load i32, i32* @CMD_INVALID, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %44)
  store %struct.cmd_results* %45, %struct.cmd_results** %5, align 8
  br label %170

46:                                               ; preds = %27
  %47 = load i64, i64* %11, align 8
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  br label %169

49:                                               ; preds = %4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BINDING_MOUSESYM, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  store i8* null, i8** %13, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @get_mouse_bindsym(i8* %55, i8** %13)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* @CMD_INVALID, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %63, i8* %64)
  store %struct.cmd_results* %65, %struct.cmd_results** %15, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.cmd_results*, %struct.cmd_results** %15, align 8
  store %struct.cmd_results* %68, %struct.cmd_results** %5, align 8
  br label %170

69:                                               ; preds = %59
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @CMD_INVALID, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  store %struct.cmd_results* %75, %struct.cmd_results** %5, align 8
  br label %170

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i64, i64* %14, align 8
  %80 = load i64*, i64** %8, align 8
  store i64 %79, i64* %80, align 8
  br label %168

81:                                               ; preds = %49
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BINDING_KEYCODE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  store i8* null, i8** %16, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @get_mouse_bindcode(i8* %90, i8** %16)
  store i64 %91, i64* %17, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @BINDING_MOUSECODE, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i64, i64* %17, align 8
  %100 = load i64*, i64** %8, align 8
  store i64 %99, i64* %100, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %5, align 8
  br label %170

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strtol(i8* %103, i32* null, i32 10)
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %18, align 8
  %106 = call i32 @xkb_keycode_is_legal_ext(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* @CMD_INVALID, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  store %struct.cmd_results* %114, %struct.cmd_results** %5, align 8
  br label %170

115:                                              ; preds = %108
  %116 = load i32, i32* @CMD_INVALID, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  store %struct.cmd_results* %118, %struct.cmd_results** %5, align 8
  br label %170

119:                                              ; preds = %102
  %120 = load i64, i64* %18, align 8
  %121 = load i64*, i64** %8, align 8
  store i64 %120, i64* %121, align 8
  br label %167

122:                                              ; preds = %81
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %122
  store i8* null, i8** %19, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @get_mouse_bindsym(i8* %126, i8** %19)
  store i64 %127, i64* %20, align 8
  %128 = load i8*, i8** %19, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* @CMD_INVALID, align 4
  %132 = load i8*, i8** %19, align 8
  %133 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %131, i8* %132)
  store %struct.cmd_results* %133, %struct.cmd_results** %21, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load %struct.cmd_results*, %struct.cmd_results** %21, align 8
  store %struct.cmd_results* %136, %struct.cmd_results** %5, align 8
  br label %170

137:                                              ; preds = %125
  %138 = load i64, i64* %20, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @BINDING_MOUSESYM, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i64, i64* %20, align 8
  %144 = load i64*, i64** %8, align 8
  store i64 %143, i64* %144, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %5, align 8
  br label %170

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146, %122
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* @XKB_KEYSYM_CASE_INSENSITIVE, align 4
  %150 = call i64 @xkb_keysym_from_name(i8* %148, i32 %149)
  store i64 %150, i64* %22, align 8
  %151 = load i64, i64* %22, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @CMD_INVALID, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %158)
  store %struct.cmd_results* %159, %struct.cmd_results** %5, align 8
  br label %170

160:                                              ; preds = %153
  %161 = load i32, i32* @CMD_INVALID, align 4
  %162 = load i8*, i8** %6, align 8
  %163 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  store %struct.cmd_results* %163, %struct.cmd_results** %5, align 8
  br label %170

164:                                              ; preds = %147
  %165 = load i64, i64* %22, align 8
  %166 = load i64*, i64** %8, align 8
  store i64 %165, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %119
  br label %168

168:                                              ; preds = %167, %78
  br label %169

169:                                              ; preds = %168, %46
  store %struct.cmd_results* null, %struct.cmd_results** %5, align 8
  br label %170

170:                                              ; preds = %169, %160, %156, %140, %130, %115, %111, %96, %72, %62, %42, %35
  %171 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %171
}

declare dso_local i64 @get_mouse_bindcode(i8*, i8**) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @get_mouse_bindsym(i8*, i8**) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @xkb_keycode_is_legal_ext(i64) #1

declare dso_local i64 @xkb_keysym_from_name(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
