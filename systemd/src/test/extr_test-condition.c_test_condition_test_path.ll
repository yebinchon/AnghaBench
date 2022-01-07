; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_path.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONDITION_PATH_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/s?\00", align 1
@CONDITION_PATH_EXISTS_GLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"/thiscertainlywontexist\00", align 1
@CONDITION_PATH_IS_DIRECTORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"/bin\00", align 1
@CONDITION_DIRECTORY_NOT_EMPTY = common dso_local global i32 0, align 4
@CONDITION_FILE_NOT_EMPTY = common dso_local global i32 0, align 4
@CONDITION_FILE_IS_EXECUTABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"/etc/passwd\00", align 1
@CONDITION_PATH_IS_MOUNT_POINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CONDITION_PATH_IS_READ_WRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@CONDITION_PATH_IS_SYMBOLIC_LINK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_condition_test_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_condition_test_path() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @CONDITION_PATH_EXISTS, align 4
  %3 = call i32* @condition_new(i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = ptrtoint i32* %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @condition_test(i32* %7)
  %9 = trunc i64 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @condition_free(i32* %11)
  %13 = load i32, i32* @CONDITION_PATH_EXISTS, align 4
  %14 = call i32* @condition_new(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i64 @condition_test(i32* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @condition_free(i32* %23)
  %25 = load i32, i32* @CONDITION_PATH_EXISTS_GLOB, align 4
  %26 = call i32* @condition_new(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32* %26, i32** %1, align 8
  %27 = load i32*, i32** %1, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @condition_test(i32* %30)
  %32 = icmp sgt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @condition_free(i32* %35)
  %37 = load i32, i32* @CONDITION_PATH_EXISTS_GLOB, align 4
  %38 = call i32* @condition_new(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1)
  store i32* %38, i32** %1, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @condition_test(i32* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @condition_free(i32* %47)
  %49 = load i32, i32* @CONDITION_PATH_EXISTS, align 4
  %50 = call i32* @condition_new(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i32* %50, i32** %1, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @condition_test(i32* %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @condition_free(i32* %59)
  %61 = load i32, i32* @CONDITION_PATH_EXISTS, align 4
  %62 = call i32* @condition_new(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1)
  store i32* %62, i32** %1, align 8
  %63 = load i32*, i32** %1, align 8
  %64 = ptrtoint i32* %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i64 @condition_test(i32* %66)
  %68 = icmp sgt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @condition_free(i32* %71)
  %73 = load i32, i32* @CONDITION_PATH_IS_DIRECTORY, align 4
  %74 = call i32* @condition_new(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i32* %74, i32** %1, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = call i32 @assert_se(i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i64 @condition_test(i32* %78)
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @condition_free(i32* %83)
  %85 = load i32, i32* @CONDITION_DIRECTORY_NOT_EMPTY, align 4
  %86 = call i32* @condition_new(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i32* %86, i32** %1, align 8
  %87 = load i32*, i32** %1, align 8
  %88 = ptrtoint i32* %87 to i32
  %89 = call i32 @assert_se(i32 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i64 @condition_test(i32* %90)
  %92 = icmp sgt i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert_se(i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @condition_free(i32* %95)
  %97 = load i32, i32* @CONDITION_FILE_NOT_EMPTY, align 4
  %98 = call i32* @condition_new(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %98, i32** %1, align 8
  %99 = load i32*, i32** %1, align 8
  %100 = ptrtoint i32* %99 to i32
  %101 = call i32 @assert_se(i32 %100)
  %102 = load i32*, i32** %1, align 8
  %103 = call i64 @condition_test(i32* %102)
  %104 = icmp sgt i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @condition_free(i32* %107)
  %109 = load i32, i32* @CONDITION_FILE_IS_EXECUTABLE, align 4
  %110 = call i32* @condition_new(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %110, i32** %1, align 8
  %111 = load i32*, i32** %1, align 8
  %112 = ptrtoint i32* %111 to i32
  %113 = call i32 @assert_se(i32 %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i64 @condition_test(i32* %114)
  %116 = icmp sgt i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert_se(i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @condition_free(i32* %119)
  %121 = load i32, i32* @CONDITION_FILE_IS_EXECUTABLE, align 4
  %122 = call i32* @condition_new(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  store i32* %122, i32** %1, align 8
  %123 = load i32*, i32** %1, align 8
  %124 = ptrtoint i32* %123 to i32
  %125 = call i32 @assert_se(i32 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i64 @condition_test(i32* %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert_se(i32 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = call i32 @condition_free(i32* %131)
  %133 = load i32, i32* @CONDITION_PATH_IS_MOUNT_POINT, align 4
  %134 = call i32* @condition_new(i32 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  store i32* %134, i32** %1, align 8
  %135 = load i32*, i32** %1, align 8
  %136 = ptrtoint i32* %135 to i32
  %137 = call i32 @assert_se(i32 %136)
  %138 = load i32*, i32** %1, align 8
  %139 = call i64 @condition_test(i32* %138)
  %140 = icmp sgt i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert_se(i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @condition_free(i32* %143)
  %145 = load i32, i32* @CONDITION_PATH_IS_MOUNT_POINT, align 4
  %146 = call i32* @condition_new(i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  store i32* %146, i32** %1, align 8
  %147 = load i32*, i32** %1, align 8
  %148 = ptrtoint i32* %147 to i32
  %149 = call i32 @assert_se(i32 %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i64 @condition_test(i32* %150)
  %152 = icmp sgt i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert_se(i32 %153)
  %155 = load i32*, i32** %1, align 8
  %156 = call i32 @condition_free(i32* %155)
  %157 = load i32, i32* @CONDITION_PATH_IS_MOUNT_POINT, align 4
  %158 = call i32* @condition_new(i32 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i32* %158, i32** %1, align 8
  %159 = load i32*, i32** %1, align 8
  %160 = ptrtoint i32* %159 to i32
  %161 = call i32 @assert_se(i32 %160)
  %162 = load i32*, i32** %1, align 8
  %163 = call i64 @condition_test(i32* %162)
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert_se(i32 %165)
  %167 = load i32*, i32** %1, align 8
  %168 = call i32 @condition_free(i32* %167)
  %169 = load i32, i32* @CONDITION_PATH_IS_READ_WRITE, align 4
  %170 = call i32* @condition_new(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  store i32* %170, i32** %1, align 8
  %171 = load i32*, i32** %1, align 8
  %172 = ptrtoint i32* %171 to i32
  %173 = call i32 @assert_se(i32 %172)
  %174 = load i32*, i32** %1, align 8
  %175 = call i64 @condition_test(i32* %174)
  %176 = icmp sgt i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert_se(i32 %177)
  %179 = load i32*, i32** %1, align 8
  %180 = call i32 @condition_free(i32* %179)
  %181 = load i32, i32* @CONDITION_PATH_IS_SYMBOLIC_LINK, align 4
  %182 = call i32* @condition_new(i32 %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  store i32* %182, i32** %1, align 8
  %183 = load i32*, i32** %1, align 8
  %184 = ptrtoint i32* %183 to i32
  %185 = call i32 @assert_se(i32 %184)
  %186 = load i32*, i32** %1, align 8
  %187 = call i64 @condition_test(i32* %186)
  %188 = icmp sgt i64 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert_se(i32 %189)
  %191 = load i32*, i32** %1, align 8
  %192 = call i32 @condition_free(i32* %191)
  ret void
}

declare dso_local i32* @condition_new(i32, i8*, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @condition_test(i32*) #1

declare dso_local i32 @condition_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
