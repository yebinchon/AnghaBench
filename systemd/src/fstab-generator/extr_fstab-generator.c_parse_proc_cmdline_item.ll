; ModuleID = '/home/carl/AnghaBench/systemd/src/fstab-generator/extr_fstab-generator.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/fstab-generator/extr_fstab-generator.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"fstab\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rd.fstab\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to parse fstab switch %s. Ignoring.\00", align 1
@arg_fstab_enabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@arg_root_what = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"rootfstype\00", align 1
@arg_root_fstype = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"rootflags\00", align 1
@arg_root_options = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"roothash\00", align 1
@arg_root_hash = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"mount.usr\00", align 1
@arg_usr_what = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"mount.usrfstype\00", align 1
@arg_usr_fstype = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"mount.usrflags\00", align 1
@arg_usr_options = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@arg_root_rw = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"systemd.volatile\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Failed to parse systemd.volatile= argument: %s\00", align 1
@arg_volatile_mode = common dso_local global i64 0, align 8
@VOLATILE_YES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @STR_IN_SET(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @parse_boolean(i8* %17)
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 1, %19 ]
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @log_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* @arg_fstab_enabled, align 4
  br label %29

29:                                               ; preds = %27, %24
  br label %196

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @streq(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @proc_cmdline_value_missing(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %197

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @free_and_strdup(i32* @arg_root_what, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @log_oom()
  store i32 %45, i32* %4, align 4
  br label %197

46:                                               ; preds = %40
  br label %195

47:                                               ; preds = %30
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @streq(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @proc_cmdline_value_missing(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %197

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @free_and_strdup(i32* @arg_root_fstype, i8* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @log_oom()
  store i32 %62, i32* %4, align 4
  br label %197

63:                                               ; preds = %57
  br label %194

64:                                               ; preds = %47
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @streq(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @proc_cmdline_value_missing(i8* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %197

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strextend_with_separator(i32* @arg_root_options, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 (...) @log_oom()
  store i32 %79, i32* %4, align 4
  br label %197

80:                                               ; preds = %74
  br label %193

81:                                               ; preds = %64
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @streq(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @proc_cmdline_value_missing(i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %197

91:                                               ; preds = %85
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @free_and_strdup(i32* @arg_root_hash, i8* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (...) @log_oom()
  store i32 %96, i32* %4, align 4
  br label %197

97:                                               ; preds = %91
  br label %192

98:                                               ; preds = %81
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 @streq(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i64 @proc_cmdline_value_missing(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %197

108:                                              ; preds = %102
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @free_and_strdup(i32* @arg_usr_what, i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 (...) @log_oom()
  store i32 %113, i32* %4, align 4
  br label %197

114:                                              ; preds = %108
  br label %191

115:                                              ; preds = %98
  %116 = load i8*, i8** %5, align 8
  %117 = call i64 @streq(i8* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @proc_cmdline_value_missing(i8* %120, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %197

125:                                              ; preds = %119
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @free_and_strdup(i32* @arg_usr_fstype, i8* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 (...) @log_oom()
  store i32 %130, i32* %4, align 4
  br label %197

131:                                              ; preds = %125
  br label %190

132:                                              ; preds = %115
  %133 = load i8*, i8** %5, align 8
  %134 = call i64 @streq(i8* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @proc_cmdline_value_missing(i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %197

142:                                              ; preds = %136
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @strextend_with_separator(i32* @arg_usr_options, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %143, i32* null)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (...) @log_oom()
  store i32 %147, i32* %4, align 4
  br label %197

148:                                              ; preds = %142
  br label %189

149:                                              ; preds = %132
  %150 = load i8*, i8** %5, align 8
  %151 = call i64 @streq(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** %6, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  store i32 1, i32* @arg_root_rw, align 4
  br label %188

157:                                              ; preds = %153, %149
  %158 = load i8*, i8** %5, align 8
  %159 = call i64 @streq(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i8*, i8** %6, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  store i32 0, i32* @arg_root_rw, align 4
  br label %187

165:                                              ; preds = %161, %157
  %166 = load i8*, i8** %5, align 8
  %167 = call i64 @streq(i8* %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load i8*, i8** %6, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i8*, i8** %6, align 8
  %174 = call i64 @volatile_mode_from_string(i8* %173)
  store i64 %174, i64* %9, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @log_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i8* %178)
  br label %182

180:                                              ; preds = %172
  %181 = load i64, i64* %9, align 8
  store i64 %181, i64* @arg_volatile_mode, align 8
  br label %182

182:                                              ; preds = %180, %177
  br label %185

183:                                              ; preds = %169
  %184 = load i64, i64* @VOLATILE_YES, align 8
  store i64 %184, i64* @arg_volatile_mode, align 8
  br label %185

185:                                              ; preds = %183, %182
  br label %186

186:                                              ; preds = %185, %165
  br label %187

187:                                              ; preds = %186, %164
  br label %188

188:                                              ; preds = %187, %156
  br label %189

189:                                              ; preds = %188, %148
  br label %190

190:                                              ; preds = %189, %131
  br label %191

191:                                              ; preds = %190, %114
  br label %192

192:                                              ; preds = %191, %97
  br label %193

193:                                              ; preds = %192, %80
  br label %194

194:                                              ; preds = %193, %63
  br label %195

195:                                              ; preds = %194, %46
  br label %196

196:                                              ; preds = %195, %29
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %146, %141, %129, %124, %112, %107, %95, %90, %78, %73, %61, %56, %44, %39
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i64 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @strextend_with_separator(i32*, i8*, i8*, i32*) #1

declare dso_local i64 @volatile_mode_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
