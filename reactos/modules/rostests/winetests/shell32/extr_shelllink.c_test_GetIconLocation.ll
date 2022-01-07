; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_GetIconLocation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_GetIconLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFOTIPSIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@CLSID_ShellLink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IShellLinkA = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no IID_IShellLinkA (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GetIconLocation failed (0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GetIconLocation returned '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GetIconLocation returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"c:\\some\\path\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"SetPath failed (0x%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\\regedit.exe\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"c:\\nonexistent\\file\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"SetIconLocation failed (0x%08x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"GetIconLocation returned %#x.\0A\00", align 1
@IID_IShellLinkW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to get IShellLinkW, hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetIconLocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetIconLocation() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @INFOTIPSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %19 = bitcast i32** %2 to i32*
  %20 = call i32 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %18, i32* @IID_IShellLinkA, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @S_OK, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %0
  store i32 1, i32* %10, align 4
  br label %225

31:                                               ; preds = %0
  store i32 -559038737, i32* %7, align 4
  %32 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = trunc i64 %12 to i32
  %35 = call i32 @IShellLinkA_GetIconLocation(i32* %33, i8* %14, i32 %34, i32* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @S_OK, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i8, i8* %14, align 16
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @IShellLinkA_SetPath(i32* %52, i8* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @S_FALSE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @S_OK, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %31
  %63 = phi i1 [ true, %31 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  store i32 -559038737, i32* %7, align 4
  %67 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32*, i32** %2, align 8
  %69 = trunc i64 %12 to i32
  %70 = call i32 @IShellLinkA_GetIconLocation(i32* %68, i8* %14, i32 %69, i32* %7)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @S_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i8, i8* %14, align 16
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = sub i64 %16, 12
  %88 = trunc i64 %87 to i32
  %89 = call i32 @GetWindowsDirectoryA(i8* %17, i32 %88)
  %90 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %91 = call i32 @path_to_pidl(i8* %17)
  store i32 %91, i32* %9, align 4
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @IShellLinkA_SetIDList(i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @S_OK, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @pILFree(i32 %101)
  store i32 -559038737, i32* %7, align 4
  %103 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32*, i32** %2, align 8
  %105 = trunc i64 %12 to i32
  %106 = call i32 @IShellLinkA_GetIconLocation(i32* %104, i8* %14, i32 %105, i32* %7)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i8, i8* %14, align 16
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  %123 = load i32*, i32** %2, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @IShellLinkA_SetIconLocation(i32* %123, i8* %124, i32 -1161901314)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %130)
  store i32 -559038737, i32* %7, align 4
  %132 = load i32*, i32** %2, align 8
  %133 = trunc i64 %12 to i32
  %134 = call i32 @IShellLinkA_GetIconLocation(i32* %132, i8* %14, i32 %133, i32* %7)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @S_OK, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i8*, i8** %3, align 8
  %142 = call i64 @lstrcmpiA(i8* %14, i8* %141)
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, -1161901314
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @IShellLinkA_SetIconLocation(i32* %151, i8* null, i32 13303550)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @S_OK, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %157)
  store i32 -559038737, i32* %7, align 4
  %159 = load i32*, i32** %2, align 8
  %160 = trunc i64 %12 to i32
  %161 = call i32 @IShellLinkA_GetIconLocation(i32* %159, i8* %14, i32 %160, i32* %7)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @S_OK, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load i8, i8* %14, align 16
  %169 = icmp ne i8 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 13303550
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %2, align 8
  %179 = bitcast i32** %1 to i8**
  %180 = call i32 @IShellLinkA_QueryInterface(i32* %178, i32* @IID_IShellLinkW, i8** %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @SUCCEEDED(i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  %185 = load i32*, i32** %2, align 8
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 @IShellLinkA_SetIconLocation(i32* %185, i8* %186, i32 -1161901314)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @S_OK, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %8, align 4
  %193 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %2, align 8
  %195 = call i32 @IShellLinkA_SetIconLocation(i32* %194, i8* null, i32 13303550)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @S_OK, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %8, align 4
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %200)
  store i32 -559038737, i32* %7, align 4
  %202 = load i32*, i32** %2, align 8
  %203 = trunc i64 %12 to i32
  %204 = call i32 @IShellLinkA_GetIconLocation(i32* %202, i8* %14, i32 %203, i32* %7)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @S_OK, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* %8, align 4
  %210 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  %211 = load i8, i8* %14, align 16
  %212 = icmp ne i8 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %216 = load i32, i32* %7, align 4
  %217 = icmp eq i32 %216, 13303550
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %7, align 4
  %220 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %219)
  %221 = load i32*, i32** %1, align 8
  %222 = call i32 @IShellLinkW_Release(i32* %221)
  %223 = load i32*, i32** %2, align 8
  %224 = call i32 @IShellLinkA_Release(i32* %223)
  store i32 0, i32* %10, align 4
  br label %225

225:                                              ; preds = %62, %30
  %226 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %10, align 4
  switch i32 %227, label %229 [
    i32 0, label %228
    i32 1, label %228
  ]

228:                                              ; preds = %225, %225
  ret void

229:                                              ; preds = %225
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @IShellLinkA_GetIconLocation(i32*, i8*, i32, i32*) #2

declare dso_local i32 @IShellLinkA_SetPath(i32*, i8*) #2

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @path_to_pidl(i8*) #2

declare dso_local i32 @IShellLinkA_SetIDList(i32*, i32) #2

declare dso_local i32 @pILFree(i32) #2

declare dso_local i32 @IShellLinkA_SetIconLocation(i32*, i8*, i32) #2

declare dso_local i64 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @IShellLinkA_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @SUCCEEDED(i32) #2

declare dso_local i32 @IShellLinkW_Release(i32*) #2

declare dso_local i32 @IShellLinkA_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
