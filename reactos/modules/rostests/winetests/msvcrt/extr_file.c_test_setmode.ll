; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_setmode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_setmode.name = private unnamed_addr constant [7 x i8] c"empty1\00", align 1
@p_fopen_s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"unicode file modes are not available, skipping setmode tests\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"_setmode returned %x, expected -1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@_O_TEXT = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@_O_CREAT = common dso_local global i32 0, align 4
@_O_WRONLY = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to open file\0A\00", align 1
@_O_BINARY = common dso_local global i32 0, align 4
@_O_WTEXT = common dso_local global i32 0, align 4
@_O_U16TEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"_setmode returned %x, expected _O_TEXT\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"_setmode returned %x, expected _O_BINARY\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"_setmode returned %x, expected _O_WTEXT\0A\00", align 1
@_O_U8TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setmode() #0 {
  %1 = alloca [7 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [7 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_setmode.name, i32 0, i32 0), i64 7, i1 false)
  %5 = load i32, i32* @p_fopen_s, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @win_skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %161

9:                                                ; preds = %0
  store i32 -559038737, i32* @errno, align 4
  %10 = call i32 @_setmode(i32 -2, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @errno, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  store i32 -559038737, i32* @errno, align 4
  %22 = load i32, i32* @_O_TEXT, align 4
  %23 = call i32 @_setmode(i32 -2, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @errno, align 4
  %30 = load i32, i32* @EBADF, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %36 = load i32, i32* @_O_CREAT, align 4
  %37 = load i32, i32* @_O_WRONLY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @_S_IWRITE, align 4
  %40 = call i32 @_open(i8* %35, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -559038737, i32* @errno, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @_setmode(i32 %45, i32 -1)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  store i32 -559038737, i32* @errno, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @_setmode(i32 %58, i32 0)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, -1
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 -559038737, i32* @errno, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @_O_BINARY, align 4
  %73 = load i32, i32* @_O_TEXT, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @_setmode(i32 %71, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, -1
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @errno, align 4
  %82 = load i32, i32* @EINVAL, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 -559038737, i32* @errno, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @_O_WTEXT, align 4
  %89 = load i32, i32* @_O_U16TEXT, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @_setmode(i32 %87, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %92, -1
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* @EINVAL, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @_O_BINARY, align 4
  %105 = call i32 @_setmode(i32 %103, i32 %104)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @_O_TEXT, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %3, align 4
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @_O_WTEXT, align 4
  %114 = call i32 @_setmode(i32 %112, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @_O_BINARY, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @_O_TEXT, align 4
  %123 = call i32 @_setmode(i32 %121, i32 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @_O_WTEXT, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @_O_U16TEXT, align 4
  %132 = call i32 @_setmode(i32 %130, i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @_O_TEXT, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %3, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @_O_U8TEXT, align 4
  %141 = call i32 @_setmode(i32 %139, i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @_O_WTEXT, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %3, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @_O_TEXT, align 4
  %150 = call i32 @_setmode(i32 %148, i32 %149)
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @_O_WTEXT, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @_close(i32 %157)
  %159 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %160 = call i32 @_unlink(i8* %159)
  br label %161

161:                                              ; preds = %9, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @_setmode(i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @_open(i8*, i32, i32) #2

declare dso_local i32 @_close(i32) #2

declare dso_local i32 @_unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
