; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testGetDllDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testGetDllDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@testGetDllDirectory.dll_directories = internal global [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"C:\\Some\\Path\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"C:\\Some\\Path\\\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Q:\\A\\Long\\Path with spaces that\\probably\\doesn't exist!\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"i=%d, SetDllDirectoryA failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Expected %u, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"i=%d, Expected %u(+1), got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"i=%d, Buffer overflow\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"i=%d, Wrong path returned: '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"i=%d, Expected %u, got %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"i=%d, Wrong path returned: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"i=%d, Buffer not null terminated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetDllDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetDllDirectory() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  store i32 4, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %234, %0
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %237

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* @testGetDllDirectory.dll_directories, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* @testGetDllDirectory.dll_directories, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @pSetDllDirectoryA(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %234

33:                                               ; preds = %18
  %34 = call i32 @pGetDllDirectoryA(i32 0, i8* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 @pGetDllDirectoryW(i32 0, i8* null)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %11, i64 %55
  store i8 65, i8* %56, align 1
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %11, i64 %59
  store i8 65, i8* %60, align 1
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @pGetDllDirectoryA(i32 %62, i8* %11)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %33
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @broken(i32 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %67, %33
  %76 = phi i1 [ true, %33 ], [ %74, %67 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i32, i8*, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %11, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 65
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i8*], [4 x i8*]* @testGetDllDirectory.dll_directories, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %11, i8* %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %99, i8* %11)
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %14, i64 %102
  store i8 65, i8* %103, align 1
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %14, i64 %106
  store i8 65, i8* %107, align 1
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @pGetDllDirectoryW(i32 %109, i8* %14)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %14, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 65
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i8*], [4 x i8*]* @testGetDllDirectory.dll_directories, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @cmpStrAW(i8* %132, i8* %14, i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @wine_dbgstr_w(i8* %14)
  %138 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %136, i32 %137)
  %139 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 65, i8* %139, align 16
  %140 = call i32 @pGetDllDirectoryA(i32 0, i8* %11)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  %144 = icmp eq i32 %141, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %5, align 4
  %150 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %146, i32 %148, i32 %149)
  %151 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 65, i8* %151, align 16
  %152 = call i32 @pGetDllDirectoryW(i32 0, i8* %14)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  %156 = icmp eq i32 %153, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i32, i8*, i32, ...) @ok(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %158, i32 %160, i32 %161)
  %163 = getelementptr inbounds i8, i8* %14, i64 0
  %164 = load i8, i8* %163, align 16
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %75
  %168 = getelementptr inbounds i8, i8* %14, i64 0
  %169 = load i8, i8* %168, align 16
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 65
  %172 = zext i1 %171 to i32
  %173 = call i64 @broken(i32 %172)
  %174 = icmp ne i64 %173, 0
  br label %175

175:                                              ; preds = %167, %75
  %176 = phi i1 [ true, %75 ], [ %174, %167 ]
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %6, align 4
  %179 = call i32 (i32, i8*, i32, ...) @ok(i32 %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 65, i8* %180, align 16
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @pGetDllDirectoryA(i32 %181, i8* %11)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  %186 = icmp eq i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  %191 = load i32, i32* %5, align 4
  %192 = call i32 (i32, i8*, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %188, i32 %190, i32 %191)
  %193 = load i32, i32* %4, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %175
  %196 = getelementptr inbounds i8, i8* %11, i64 0
  %197 = load i8, i8* %196, align 16
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %6, align 4
  %202 = call i32 (i32, i8*, i32, ...) @ok(i32 %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %195, %175
  %204 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 65, i8* %204, align 16
  %205 = load i32, i32* %4, align 4
  %206 = call i32 @pGetDllDirectoryW(i32 %205, i8* %14)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  %210 = icmp eq i32 %207, %209
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %4, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %5, align 4
  %216 = call i32 (i32, i8*, i32, ...) @ok(i32 %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %212, i32 %214, i32 %215)
  %217 = getelementptr inbounds i8, i8* %14, i64 0
  %218 = load i8, i8* %217, align 16
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %203
  %222 = getelementptr inbounds i8, i8* %14, i64 0
  %223 = load i8, i8* %222, align 16
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 65
  %226 = zext i1 %225 to i32
  %227 = call i64 @broken(i32 %226)
  %228 = icmp ne i64 %227, 0
  br label %229

229:                                              ; preds = %221, %203
  %230 = phi i1 [ true, %203 ], [ %228, %221 ]
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %6, align 4
  %233 = call i32 (i32, i8*, i32, ...) @ok(i32 %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %229, %30
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %15

237:                                              ; preds = %15
  %238 = call i32 @pSetDllDirectoryA(i8* null)
  %239 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %239)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pSetDllDirectoryA(i8*) #2

declare dso_local i32 @skip(i8*, i32) #2

declare dso_local i32 @pGetDllDirectoryA(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @pGetDllDirectoryW(i32, i8*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @cmpStrAW(i8*, i8*, i32, i32) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
