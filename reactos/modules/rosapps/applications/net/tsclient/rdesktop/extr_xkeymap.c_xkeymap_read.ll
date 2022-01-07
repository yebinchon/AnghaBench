; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_read.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32 }

@KEYMAP_MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to open keymap %s\0A\00", align 1
@False = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" \09\0A\0D\0C\0B\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"include \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"map \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Keylayout 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"enable_compose\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Enabling compose handling\0A\00", align 1
@True = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"keyboard_type \00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"keyboard_type 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"keyboard_subtype \00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"keyboard_subtype 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"keyboard_functionkeys \00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"keyboard_functionkeys 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Bad line %d in keymap %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"altgr\00", align 1
@MapAltGrMask = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@MapLeftShiftMask = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"numlock\00", align 1
@MapNumLockMask = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"localstate\00", align 1
@MapLocalStateMask = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"inhibit\00", align 1
@MapInhibitMask = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"addupper\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*)* @xkeymap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xkeymap_read(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @KEYMAP_MAX_LINE_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @xkeymap_open(i8* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** @False, align 8
  store i8* %28, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %232

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %227, %142, %137, %122, %109, %96, %87, %79, %64, %60, %48, %29
  %31 = trunc i64 %18 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @fgets(i8* %20, i32 %31, i32* %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %228

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = call i8* @strchr(i8* %20, i8 signext 10)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %12, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %35
  %44 = call i32 @strlen(i8* %20)
  store i32 %44, i32* %10, align 4
  %45 = call i32 @strspn(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %30

49:                                               ; preds = %43
  %50 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds i8, i8* %20, i64 9
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = call i8* @xkeymap_read(%struct.TYPE_5__* %53, i8* %55)
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** @False, align 8
  store i8* %59, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %232

60:                                               ; preds = %52
  br label %30

61:                                               ; preds = %49
  %62 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, i8* %20, i64 5
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = call i32 @strtoul(i8* %66, i32* null, i32 16)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @DEBUG_KBD(i8* %74)
  br label %30

76:                                               ; preds = %61
  %77 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call i32 @DEBUG_KBD(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i8*, i8** @True, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  br label %30

84:                                               ; preds = %76
  %85 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds i8, i8* %20, i64 9
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @add_sequence(%struct.TYPE_5__* %88, i8* %90, i8* %91)
  br label %30

93:                                               ; preds = %84
  %94 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, i8* %20, i64 15
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = call i8* @strtol(i8* %98, i8** null, i32 16)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @DEBUG_KBD(i8* %104)
  br label %30

106:                                              ; preds = %93
  %107 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = getelementptr inbounds i8, i8* %20, i64 18
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  %112 = call i8* @strtol(i8* %111, i8** null, i32 16)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @DEBUG_KBD(i8* %117)
  br label %30

119:                                              ; preds = %106
  %120 = call i64 @str_startswith(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, i8* %20, i64 23
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  %125 = call i8* @strtol(i8* %124, i8** null, i32 16)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @DEBUG_KBD(i8* %130)
  br label %30

132:                                              ; preds = %119
  %133 = getelementptr inbounds i8, i8* %20, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 35
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %30

138:                                              ; preds = %132
  store i8* %20, i8** %11, align 8
  %139 = call i8* @strchr(i8* %20, i8 signext 32)
  store i8* %139, i8** %12, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* %9, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %143, i8* %144)
  br label %30

146:                                              ; preds = %138
  %147 = load i8*, i8** %12, align 8
  store i8 0, i8* %147, align 1
  br label %148

148:                                              ; preds = %146
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %12, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = call i8* @strtol(i8* %151, i8** %13, i32 16)
  store i8* %152, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = call i64 @strstr(i8* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load i64, i64* %15, align 8
  %158 = load i32, i32* @MapAltGrMask, align 4
  %159 = call i32 @MASK_ADD_BITS(i64 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %148
  %161 = load i8*, i8** %13, align 8
  %162 = call i64 @strstr(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64, i64* %15, align 8
  %166 = load i32, i32* @MapLeftShiftMask, align 4
  %167 = call i32 @MASK_ADD_BITS(i64 %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i8*, i8** %13, align 8
  %170 = call i64 @strstr(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i64, i64* %15, align 8
  %174 = load i32, i32* @MapNumLockMask, align 4
  %175 = call i32 @MASK_ADD_BITS(i64 %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i8*, i8** %13, align 8
  %178 = call i64 @strstr(i8* %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i64, i64* %15, align 8
  %182 = load i32, i32* @MapLocalStateMask, align 4
  %183 = call i32 @MASK_ADD_BITS(i64 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %176
  %185 = load i8*, i8** %13, align 8
  %186 = call i64 @strstr(i8* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i64, i64* %15, align 8
  %190 = load i32, i32* @MapInhibitMask, align 4
  %191 = call i32 @MASK_ADD_BITS(i64 %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = load i64, i64* %15, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 @add_to_keymap(%struct.TYPE_5__* %193, i8* %194, i8* %195, i64 %196, i8* %197)
  %199 = load i8*, i8** %13, align 8
  %200 = call i64 @strstr(i8* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %192
  %203 = load i8*, i8** %11, align 8
  store i8* %203, i8** %12, align 8
  br label %204

204:                                              ; preds = %214, %202
  %205 = load i8*, i8** %12, align 8
  %206 = load i8, i8* %205, align 1
  %207 = icmp ne i8 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load i8*, i8** %12, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = call signext i8 @toupper(i32 %211)
  %213 = load i8*, i8** %12, align 8
  store i8 %212, i8* %213, align 1
  br label %214

214:                                              ; preds = %208
  %215 = load i8*, i8** %12, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %12, align 8
  br label %204

217:                                              ; preds = %204
  %218 = load i64, i64* %15, align 8
  %219 = load i32, i32* @MapLeftShiftMask, align 4
  %220 = call i32 @MASK_ADD_BITS(i64 %218, i32 %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = load i8*, i8** %14, align 8
  %224 = load i64, i64* %15, align 8
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @add_to_keymap(%struct.TYPE_5__* %221, i8* %222, i8* %223, i64 %224, i8* %225)
  br label %227

227:                                              ; preds = %217, %192
  br label %30

228:                                              ; preds = %30
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @fclose(i32* %229)
  %231 = load i8*, i8** @True, align 8
  store i8* %231, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %232

232:                                              ; preds = %228, %58, %25
  %233 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i8*, i8** %3, align 8
  ret i8* %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @xkeymap_open(i8*) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strspn(i8*, i8*) #2

declare dso_local i64 @str_startswith(i8*, i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @DEBUG_KBD(i8*) #2

declare dso_local i32 @add_sequence(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i8* @strtol(i8*, i8**, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @MASK_ADD_BITS(i64, i32) #2

declare dso_local i32 @add_to_keymap(%struct.TYPE_5__*, i8*, i8*, i64, i8*) #2

declare dso_local signext i8 @toupper(i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
