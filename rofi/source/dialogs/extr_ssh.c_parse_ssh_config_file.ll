; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_parse_ssh_config_file.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_parse_ssh_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { i64, i8**, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Parsing ssh config file: %s\00", align 1
@SSH_TOKEN_DELIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Found Include: %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"userknownhostsfile\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Found extra UserKnownHostsFile: %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"*?\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Failed to close ssh configuration file: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_9__**, i32*, i32)* @parse_ssh_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ssh_config_file(i32* %0, i8* %1, %struct.TYPE_9__** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_8__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %232

31:                                               ; preds = %5
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  br label %32

32:                                               ; preds = %214, %47, %31
  %33 = load i32*, i32** %11, align 8
  %34 = call i64 @getline(i8** %12, i64* %13, i32* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %217

36:                                               ; preds = %32
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @SSH_TOKEN_DELIM, align 4
  %39 = call i8* @strtok_r(i8* %37, i32 %38, i8** %14)
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i8*, i8** %15, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %36
  br label %32

48:                                               ; preds = %42
  %49 = load i8*, i8** %15, align 8
  %50 = call i8* @g_ascii_strdown(i8* %49, i32 -1)
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i64 @g_strcmp0(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %48
  %55 = load i32, i32* @SSH_TOKEN_DELIM, align 4
  %56 = call i8* @strtok_r(i8* null, i32 %55, i8** %14)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @g_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %15, align 8
  %60 = call i8* @rofi_expand_path(i8* %59)
  store i8* %60, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = call i32 @g_path_is_absolute(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %54
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @g_path_get_dirname(i8* %65)
  store i8* %66, i8** %19, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = call i8* @g_build_filename(i8* %67, i8* %68, i32* null)
  store i8* %69, i8** %18, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 @g_free(i8* %70)
  br label %75

72:                                               ; preds = %54
  %73 = load i8*, i8** %17, align 8
  %74 = call i8* @g_strdup(i8* %73)
  store i8* %74, i8** %18, align 8
  br label %75

75:                                               ; preds = %72, %64
  %76 = bitcast %struct.TYPE_8__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %76, i8 0, i64 24, i1 false)
  %77 = load i8*, i8** %18, align 8
  %78 = call i64 @glob(i8* %77, i32 0, i32* null, %struct.TYPE_8__* %20)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  store i64 0, i64* %21, align 8
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i64, i64* %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* %21, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  call void @parse_ssh_config_file(i32* %87, i8* %92, %struct.TYPE_9__** %93, i32* %94, i32 %95)
  br label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %21, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %21, align 8
  br label %81

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %75
  %101 = call i32 @globfree(%struct.TYPE_8__* %20)
  %102 = load i8*, i8** %18, align 8
  %103 = call i32 @g_free(i8* %102)
  %104 = load i8*, i8** %17, align 8
  %105 = call i32 @g_free(i8* %104)
  br label %214

106:                                              ; preds = %48
  %107 = load i8*, i8** %16, align 8
  %108 = call i64 @g_strcmp0(i8* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %115, %110
  %112 = load i32, i32* @SSH_TOKEN_DELIM, align 4
  %113 = call i8* @strtok_r(i8* null, i32 %112, i8** %14)
  store i8* %113, i8** %15, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @g_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  %118 = load i32*, i32** %6, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 @add_known_hosts_file(i32* %118, i8* %119)
  br label %111

121:                                              ; preds = %111
  br label %213

122:                                              ; preds = %106
  %123 = load i8*, i8** %16, align 8
  %124 = call i64 @g_strcmp0(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %212

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %172, %171, %140, %126
  %128 = load i32, i32* @SSH_TOKEN_DELIM, align 4
  %129 = call i8* @strtok_r(i8* null, i32 %128, i8** %14)
  store i8* %129, i8** %15, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %211

131:                                              ; preds = %127
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %22, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 33
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %15, align 8
  %138 = call i64 @strpbrk(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %131
  br label %127

141:                                              ; preds = %136
  %142 = load i8*, i8** %15, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 35
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %211

147:                                              ; preds = %141
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %148

148:                                              ; preds = %165, %147
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load i8*, i8** %15, align 8
  %154 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* %24, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @g_ascii_strcasecmp(i8* %153, i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %152
  store i32 1, i32* %23, align 4
  br label %168

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %24, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %24, align 4
  br label %148

168:                                              ; preds = %163, %148
  %169 = load i32, i32* %23, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %127

172:                                              ; preds = %168
  %173 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 2
  %178 = zext i32 %177 to i64
  %179 = mul i64 %178, 16
  %180 = trunc i64 %179 to i32
  %181 = call %struct.TYPE_9__* @g_realloc(%struct.TYPE_9__* %174, i32 %180)
  %182 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %182, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = call i8* @g_strdup(i8* %183)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  store i32* %185, i32** %192, align 8
  %193 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store i32* null, i32** %207, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %127

211:                                              ; preds = %146, %127
  br label %212

212:                                              ; preds = %211, %122
  br label %213

213:                                              ; preds = %212, %121
  br label %214

214:                                              ; preds = %213, %100
  %215 = load i8*, i8** %16, align 8
  %216 = call i32 @g_free(i8* %215)
  br label %32

217:                                              ; preds = %32
  %218 = load i8*, i8** %12, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 @free(i8* %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32*, i32** %11, align 8
  %225 = call i64 @fclose(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i32, i32* @errno, align 4
  %229 = call i32 @g_strerror(i32 %228)
  %230 = call i32 @g_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %227, %223
  br label %232

232:                                              ; preds = %231, %5
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @g_debug(i8*, i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strtok_r(i8*, i32, i8**) #1

declare dso_local i8* @g_ascii_strdown(i8*, i32) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32 @g_path_is_absolute(i8*) #1

declare dso_local i8* @g_path_get_dirname(i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @globfree(%struct.TYPE_8__*) #1

declare dso_local i32 @add_known_hosts_file(i32*, i8*) #1

declare dso_local i64 @strpbrk(i8*, i8*) #1

declare dso_local i32 @g_ascii_strcasecmp(i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @g_realloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
