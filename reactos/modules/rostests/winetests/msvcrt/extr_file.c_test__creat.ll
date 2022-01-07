; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test__creat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test__creat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__creat.testdata = private unnamed_addr constant [4 x i8] c"a\0Ab\0A", align 1
@.str = private unnamed_addr constant [42 x i8] c"_fmode can't be set, skipping mode tests\0A\00", align 1
@_O_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"_creat.tst\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"_creat failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"expected pos 6 (text mode), got %d\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"_lseek failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"_read returned %d, expected 4\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"_read returned wrong contents\0A\00", align 1
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"expected read-only file\0A\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"expected pos 4 (binary mode), got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"expected rw file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__creat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__creat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca [4 x i8], align 1
  store i32 0, i32* %5, align 4
  %9 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test__creat.testdata, i32 0, i32 0), i64 4, i1 false)
  %10 = call i32 @p__get_fmode(i32* %5)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @_O_TEXT, align 4
  %23 = call i32 @p__set_fmode(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = call i32 @_creat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %1, align 4
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %32 = call i32 @_write(i32 %30, i8* %31, i32 4)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @_tell(i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 6
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35, %24
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @_lseek(i32 %44, i32 %45, i32 0)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %1, align 4
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %52 = call i32 @_read(i32 %50, i8* %51, i32 6)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 4
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %43
  %61 = load i32, i32* %3, align 4
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 4, %63 ], [ %65, %64 ]
  br label %69

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  store i32 %70, i32* %3, align 4
  %71 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @memcmp(i8* %71, i8* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @_close(i32 %78)
  %80 = call i32 @GetFileAttributesA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %86 = call i32 @SetFileAttributesA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %69
  %91 = load i32, i32* @_O_BINARY, align 4
  %92 = call i32 @p__set_fmode(i32 %91)
  br label %93

93:                                               ; preds = %90, %69
  %94 = load i32, i32* @_S_IREAD, align 4
  %95 = load i32, i32* @_S_IWRITE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @_creat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %1, align 4
  %99 = icmp sgt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %1, align 4
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %104 = call i32 @_write(i32 %102, i8* %103, i32 4)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @_tell(i32 %108)
  store i32 %109, i32* %2, align 4
  %110 = load i32, i32* %2, align 4
  %111 = icmp eq i32 %110, 4
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %2, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %107, %93
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i64 @_lseek(i32 %116, i32 %117, i32 0)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* %1, align 4
  %123 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %124 = call i32 @_read(i32 %122, i8* %123, i32 6)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp eq i32 %125, 4
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %115
  %133 = load i32, i32* %3, align 4
  %134 = icmp sgt i32 %133, 4
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ 4, %135 ], [ %137, %136 ]
  br label %141

140:                                              ; preds = %115
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  store i32 %142, i32* %3, align 4
  %143 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %145 = load i32, i32* %3, align 4
  %146 = call i64 @memcmp(i8* %143, i8* %144, i32 %145)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @_close(i32 %150)
  %152 = call i32 @GetFileAttributesA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %161 = call i32 @SetFileAttributesA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %141
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @p__set_fmode(i32 %166)
  br label %168

168:                                              ; preds = %165, %141
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p__get_fmode(i32*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @p__set_fmode(i32) #2

declare dso_local i32 @_creat(i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @_write(i32, i8*, i32) #2

declare dso_local i32 @_tell(i32) #2

declare dso_local i64 @_lseek(i32, i32, i32) #2

declare dso_local i32 @_read(i32, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @_close(i32) #2

declare dso_local i32 @GetFileAttributesA(i8*) #2

declare dso_local i32 @SetFileAttributesA(i8*, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
