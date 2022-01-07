; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_data.c_test___getmainargs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_data.c_test___getmainargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GetTempPath failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"argc = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"argv[1] = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s*\\*\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"argv[2] = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%swine_test/*\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"argv[3] = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"argv[4] != NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"*__p___argc() = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"*__p___argv() = %p, expected %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"%swine_test/a\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%swine_test/test\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"argv[4] = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"argv[5] != NULL\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"*__p___argc() = %d, expected %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"%swine_test/b\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"fopen(%s) failed: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"new_argc = %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test___getmainargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test___getmainargs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = call i64 @GetTempPathA(i32 %18, i8* %14)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %23 = call i32 @__getmainargs(i32* %1, i8*** %4, i8*** %6, i32 0, i32* %3)
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 4
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %1, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* %17)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  %52 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %14)
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* %17)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %62)
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %71 = call i32* (...) @p___p___argc()
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %2, align 4
  %73 = call i8*** (...) @p___p___argv()
  %74 = load i8**, i8*** %73, align 8
  store i8** %74, i8*** %5, align 8
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 4
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %2, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8**, i8*** %4, align 8
  %82 = icmp eq i8** %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8**, i8*** %4, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %84, i8** %85)
  store i32 0, i32* %3, align 4
  %87 = call i32 @__getmainargs(i32* %1, i8*** %4, i8*** %6, i32 1, i32* %3)
  %88 = load i32, i32* %1, align 4
  %89 = icmp eq i32 %88, 5
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %1, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i8**, i8*** %4, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i8**, i8*** %4, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  %105 = load i8**, i8*** %4, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* %107, i8* %17)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load i8**, i8*** %4, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %14)
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 3
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %4, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %119, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 97
  br i1 %129, label %130, label %154

130:                                              ; preds = %0
  %131 = load i8**, i8*** %4, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strcmp(i8* %133, i8* %17)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load i8**, i8*** %4, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 3
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %140)
  %142 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %14)
  %143 = load i8**, i8*** %4, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 4
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strcmp(i8* %145, i8* %17)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %152)
  br label %178

154:                                              ; preds = %0
  %155 = load i8**, i8*** %4, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 4
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strcmp(i8* %157, i8* %17)
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = load i8**, i8*** %4, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 4
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %164)
  %166 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %14)
  %167 = load i8**, i8*** %4, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strcmp(i8* %169, i8* %17)
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = load i8**, i8*** %4, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 3
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %154, %130
  %179 = load i8**, i8*** %4, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 5
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %186 = call i32* (...) @p___p___argc()
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %2, align 4
  %188 = call i8*** (...) @p___p___argv()
  %189 = load i8**, i8*** %188, align 8
  store i8** %189, i8*** %5, align 8
  %190 = load i32, i32* %2, align 4
  %191 = load i32, i32* %1, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* %1, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load i8**, i8*** %5, align 8
  %198 = load i8**, i8*** %4, align 8
  %199 = icmp eq i8** %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i8**, i8*** %5, align 8
  %202 = load i8**, i8*** %4, align 8
  %203 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %201, i8** %202)
  %204 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %14)
  %205 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32* %205, i32** %10, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = icmp ne i32* %206, null
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* @errno, align 4
  %210 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %17, i32 %209)
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @fclose(i32* %211)
  store i32 0, i32* %3, align 4
  %213 = call i32 @__getmainargs(i32* %2, i8*** %5, i8*** %6, i32 1, i32* %3)
  %214 = load i32, i32* %2, align 4
  %215 = load i32, i32* %1, align 4
  %216 = add nsw i32 %215, 1
  %217 = icmp eq i32 %214, %216
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %2, align 4
  %220 = load i32, i32* %1, align 4
  %221 = add nsw i32 %220, 1
  %222 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %219, i32 %221)
  %223 = call i32 @_unlink(i8* %17)
  %224 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %224)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @__getmainargs(i32*, i8***, i8***, i32, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32* @p___p___argc(...) #2

declare dso_local i8*** @p___p___argv(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @_unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
