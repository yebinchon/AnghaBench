; ModuleID = '/home/carl/AnghaBench/vlc/test/src/crypto/extr_update.c_check.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/crypto/extr_update.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Good %s %s signature from %s (%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, i8*, %struct.TYPE_9__*, i32*, i32*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i8* %2, %struct.TYPE_9__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = call i32* @hash_from_text(i8* %18, %struct.TYPE_9__* %19)
  store i32* %20, i32** %13, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %24

21:                                               ; preds = %6
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = call i32* @hash_from_public_key(%struct.TYPE_10__* %22)
  store i32* %23, i32** %13, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32*, i32** %13, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %13, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @memcmp(i32* %28, i32* %31, i32 2)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @memcmp(i32* %39, i32* %40, i32 8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %24
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32*, i32** %11, align 8
  call void @check(%struct.TYPE_10__* %53, %struct.TYPE_10__* null, i8* null, %struct.TYPE_9__* %55, i32* %56, i32* null)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %7, align 8
  br label %58

58:                                               ; preds = %49, %24
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @verify_signature(%struct.TYPE_9__* %59, i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @gcry_md_algo_name(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 7
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %73, i8* %76, i32 %81, i32 %86, i32 %91, i32 %96, i32 %101, i32 %106, i32 %111, i32 %116)
  ret void
}

declare dso_local i32* @hash_from_text(i8*, %struct.TYPE_9__*) #1

declare dso_local i32* @hash_from_public_key(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @verify_signature(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @gcry_md_algo_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
