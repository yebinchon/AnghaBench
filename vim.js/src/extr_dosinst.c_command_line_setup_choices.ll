; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_command_line_setup_choices.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_command_line_setup_choices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"-create-batfiles\00", align 1
@TARGET_COUNT = common dso_local global i32 0, align 4
@targets = common dso_local global %struct.TYPE_2__* null, align 8
@has_gvim = common dso_local global i64 0, align 8
@has_vim = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%s is not a valid choice for -create-batfiles\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"-create-vimrc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"-install-popup\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"-install-openwith\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"-add-start-menu\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"-install-icons\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"-create-directories\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"vim\00", align 1
@vimfiles_dir_vim = common dso_local global i64 0, align 8
@vimfiles_dir_choice = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@vimfiles_dir_home = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [46 x i8] c"Unknown argument for -create-directories: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Got unknown argument argv[%d] = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @command_line_setup_choices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_line_setup_choices(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %238, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %241

11:                                               ; preds = %7
  %12 = load i8**, i8*** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %238

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %105, %25
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %26
  %42 = phi i1 [ false, %26 ], [ %40, %37 ]
  br i1 %42, label %43, label %106

43:                                               ; preds = %41
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %85, %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @TARGET_COUNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 103
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i64, i64* @has_gvim, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %84

64:                                               ; preds = %50
  %65 = load i64, i64* @has_vim, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64, %61
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @targets, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %72, i8* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @init_bat_choice(i32 %82)
  br label %88

84:                                               ; preds = %67, %64, %61
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %46

88:                                               ; preds = %81, %46
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @TARGET_COUNT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8**, i8*** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %92, %88
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %106

105:                                              ; preds = %99
  br label %26

106:                                              ; preds = %104, %41
  br label %237

107:                                              ; preds = %11
  %108 = load i8**, i8*** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 (...) @init_vimrc_choices()
  br label %236

117:                                              ; preds = %107
  %118 = load i8**, i8*** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 (...) @init_popup_choice()
  br label %235

127:                                              ; preds = %117
  %128 = load i8**, i8*** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = call i32 (...) @init_openwith_choice()
  br label %234

137:                                              ; preds = %127
  %138 = load i8**, i8*** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = call i32 (...) @init_startmenu_choice()
  br label %233

147:                                              ; preds = %137
  %148 = load i8**, i8*** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = call i32 (...) @init_shortcut_choices()
  br label %232

157:                                              ; preds = %147
  %158 = load i8**, i8*** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %222

165:                                              ; preds = %157
  %166 = call i32 (...) @init_directories_choice()
  %167 = load i8**, i8*** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 45
  br i1 %176, label %177, label %218

177:                                              ; preds = %165
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  %180 = load i8**, i8*** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i64, i64* @vimfiles_dir_vim, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* @vimfiles_dir_choice, align 4
  br label %217

190:                                              ; preds = %177
  %191 = load i8**, i8*** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %190
  %199 = call i32* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i64, i64* @vimfiles_dir_vim, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* @vimfiles_dir_choice, align 4
  br label %207

204:                                              ; preds = %198
  %205 = load i64, i64* @vimfiles_dir_home, align 8
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* @vimfiles_dir_choice, align 4
  br label %207

207:                                              ; preds = %204, %201
  br label %216

208:                                              ; preds = %190
  %209 = load i8**, i8*** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* %213)
  %215 = call i32 (...) @print_cmd_line_help()
  br label %216

216:                                              ; preds = %208, %207
  br label %217

217:                                              ; preds = %216, %187
  br label %221

218:                                              ; preds = %165
  %219 = load i64, i64* @vimfiles_dir_vim, align 8
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* @vimfiles_dir_choice, align 4
  br label %221

221:                                              ; preds = %218, %217
  br label %231

222:                                              ; preds = %157
  %223 = load i32, i32* %5, align 4
  %224 = load i8**, i8*** %4, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %223, i8* %228)
  %230 = call i32 (...) @print_cmd_line_help()
  br label %231

231:                                              ; preds = %222, %221
  br label %232

232:                                              ; preds = %231, %155
  br label %233

233:                                              ; preds = %232, %145
  br label %234

234:                                              ; preds = %233, %135
  br label %235

235:                                              ; preds = %234, %125
  br label %236

236:                                              ; preds = %235, %115
  br label %237

237:                                              ; preds = %236, %106
  br label %238

238:                                              ; preds = %237, %24
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %5, align 4
  br label %7

241:                                              ; preds = %7
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @init_bat_choice(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @init_vimrc_choices(...) #1

declare dso_local i32 @init_popup_choice(...) #1

declare dso_local i32 @init_openwith_choice(...) #1

declare dso_local i32 @init_startmenu_choice(...) #1

declare dso_local i32 @init_shortcut_choices(...) #1

declare dso_local i32 @init_directories_choice(...) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @print_cmd_line_help(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
