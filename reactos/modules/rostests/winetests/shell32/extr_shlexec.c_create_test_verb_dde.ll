; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_create_test_verb_dde.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_create_test_verb_dde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@assoc_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" Assoc \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rawcmd\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"cmdtail\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ddeexec\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"topic\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ifexec\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s\\shell\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"%s key creation failed with %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"%s verb key creation failed with %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"'command' key creation failed with %d\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@argv0 = common dso_local global i8* null, align 8
@child_file = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"%s shlexec \22%s\22 %s\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"setting command failed with %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"'ddeexec' key creation failed with %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"set value failed with %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"'application' key creation failed with %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"'topic' key creation failed with %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"'ifexec' key creation failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*)* @create_test_verb_dde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_test_verb_dde(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %32 = load i32, i32* @assoc_desc, align 4
  %33 = call i32 @strcpy(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @assoc_desc, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strcat_param(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @assoc_desc, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strcat_param(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @assoc_desc, align 4
  %43 = call i32 @strcat_param(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %44 = load i32, i32* @assoc_desc, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @strcat_param(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @assoc_desc, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @strcat_param(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @assoc_desc, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 @strcat_param(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @assoc_desc, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @strcat_param(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @assoc_desc, align 4
  %57 = load i8*, i8** %16, align 8
  %58 = call i32 @strcat_param(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %62 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %63 = call i32 @RegOpenKeyExA(i32 %61, i8* %31, i32 0, i32 %62, i32* %17)
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* @ERROR_SUCCESS, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %23, align 4
  %69 = call i32 (i32, i8*, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %31, i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %73 = call i32 @RegCreateKeyExA(i32 %70, i8* %71, i32 0, i32* null, i32 0, i32 %72, i32* null, i32* %18, i32* null)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %23, align 4
  %80 = call i32 (i32, i8*, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* %78, i32 %79)
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @KEY_SET_VALUE, align 4
  %83 = call i32 @RegCreateKeyExA(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %82, i32* null, i32* %19, i32* null)
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* @ERROR_SUCCESS, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %23, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 (i32, i8*, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @REG_SZ, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load i8*, i8** %12, align 8
  %100 = call i64 @strlen(i8* %99)
  %101 = add nsw i64 %100, 1
  %102 = call i32 @RegSetValueExA(i32 %95, i32* null, i32 0, i32 %96, i32 %98, i64 %101)
  store i32 %102, i32* %23, align 4
  br label %139

103:                                              ; preds = %8
  %104 = load i8*, i8** @argv0, align 8
  %105 = call i64 @strlen(i8* %104)
  %106 = add nsw i64 %105, 10
  %107 = load i8*, i8** @child_file, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = add nsw i64 %106, %108
  %110 = add nsw i64 %109, 2
  %111 = load i8*, i8** %12, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = add nsw i64 %110, %112
  %114 = add nsw i64 %113, 1
  %115 = call i8* @heap_alloc(i64 %114)
  store i8* %115, i8** %22, align 8
  %116 = load i8*, i8** %22, align 8
  %117 = load i8*, i8** @argv0, align 8
  %118 = load i8*, i8** @child_file, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %117, i8* %118, i8* %119)
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @REG_SZ, align 4
  %123 = load i8*, i8** %22, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load i8*, i8** %22, align 8
  %126 = call i64 @strlen(i8* %125)
  %127 = add nsw i64 %126, 1
  %128 = call i32 @RegSetValueExA(i32 %121, i32* null, i32 0, i32 %122, i32 %124, i64 %127)
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* @ERROR_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 (i32, i8*, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* %135)
  %137 = load i8*, i8** %22, align 8
  %138 = call i32 @heap_free(i8* %137)
  br label %139

139:                                              ; preds = %103, %94
  %140 = load i8*, i8** %13, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %273

142:                                              ; preds = %139
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* @KEY_SET_VALUE, align 4
  %145 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @RegCreateKeyExA(i32 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %146, i32* null, i32* %24, i32* null)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* @ERROR_SUCCESS, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 (i32, i8*, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* %24, align 4
  %157 = load i32, i32* @REG_SZ, align 4
  %158 = load i8*, i8** %13, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load i8*, i8** %13, align 8
  %161 = call i64 @strlen(i8* %160)
  %162 = add nsw i64 %161, 1
  %163 = call i32 @RegSetValueExA(i32 %156, i32* null, i32 0, i32 %157, i32 %159, i64 %162)
  store i32 %163, i32* %23, align 4
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* @ERROR_SUCCESS, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %23, align 4
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = call i32 (i32, i8*, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %170)
  %172 = load i8*, i8** %14, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %204

174:                                              ; preds = %142
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* @KEY_SET_VALUE, align 4
  %177 = call i32 @RegCreateKeyExA(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %176, i32* null, i32* %25, i32* null)
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* @ERROR_SUCCESS, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %23, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 (i32, i8*, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i8* %184)
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* @REG_SZ, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = load i8*, i8** %14, align 8
  %191 = call i64 @strlen(i8* %190)
  %192 = add nsw i64 %191, 1
  %193 = call i32 @RegSetValueExA(i32 %186, i32* null, i32 0, i32 %187, i32 %189, i64 %192)
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* @ERROR_SUCCESS, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = call i32 (i32, i8*, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %200)
  %202 = load i32, i32* %25, align 4
  %203 = call i32 @CloseHandle(i32 %202)
  br label %204

204:                                              ; preds = %174, %142
  %205 = load i8*, i8** %15, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %237

207:                                              ; preds = %204
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* @KEY_SET_VALUE, align 4
  %210 = call i32 @RegCreateKeyExA(i32 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %209, i32* null, i32* %26, i32* null)
  store i32 %210, i32* %23, align 4
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* @ERROR_SUCCESS, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %23, align 4
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = call i32 (i32, i8*, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* %217)
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* @REG_SZ, align 4
  %221 = load i8*, i8** %15, align 8
  %222 = ptrtoint i8* %221 to i32
  %223 = load i8*, i8** %15, align 8
  %224 = call i64 @strlen(i8* %223)
  %225 = add nsw i64 %224, 1
  %226 = call i32 @RegSetValueExA(i32 %219, i32* null, i32 0, i32 %220, i32 %222, i64 %225)
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %23, align 4
  %228 = load i32, i32* @ERROR_SUCCESS, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %23, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = call i32 (i32, i8*, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %233)
  %235 = load i32, i32* %26, align 4
  %236 = call i32 @CloseHandle(i32 %235)
  br label %237

237:                                              ; preds = %207, %204
  %238 = load i8*, i8** %16, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %270

240:                                              ; preds = %237
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* @KEY_SET_VALUE, align 4
  %243 = call i32 @RegCreateKeyExA(i32 %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %242, i32* null, i32* %27, i32* null)
  store i32 %243, i32* %23, align 4
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* @ERROR_SUCCESS, align 4
  %246 = icmp eq i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* %23, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 (i32, i8*, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* %250)
  %252 = load i32, i32* %27, align 4
  %253 = load i32, i32* @REG_SZ, align 4
  %254 = load i8*, i8** %16, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load i8*, i8** %16, align 8
  %257 = call i64 @strlen(i8* %256)
  %258 = add nsw i64 %257, 1
  %259 = call i32 @RegSetValueExA(i32 %252, i32* null, i32 0, i32 %253, i32 %255, i64 %258)
  store i32 %259, i32* %23, align 4
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* @ERROR_SUCCESS, align 4
  %262 = icmp eq i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %23, align 4
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %267 = call i32 (i32, i8*, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %266)
  %268 = load i32, i32* %27, align 4
  %269 = call i32 @CloseHandle(i32 %268)
  br label %270

270:                                              ; preds = %240, %237
  %271 = load i32, i32* %24, align 4
  %272 = call i32 @CloseHandle(i32 %271)
  br label %273

273:                                              ; preds = %270, %139
  %274 = load i32, i32* %17, align 4
  %275 = call i32 @CloseHandle(i32 %274)
  %276 = load i32, i32* %18, align 4
  %277 = call i32 @CloseHandle(i32 %276)
  %278 = load i32, i32* %19, align 4
  %279 = call i32 @CloseHandle(i32 %278)
  %280 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %280)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @strcat_param(i32, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i8*, ...) #2

declare dso_local i32 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegSetValueExA(i32, i32*, i32, i32, i32, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @heap_alloc(i64) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i32 @CloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
