; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCreateUser.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCreateUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i32*, i32, i32 }

@Users = common dso_local global i32 0, align 4
@raxNotFound = common dso_local global i64 0, align 8
@USER_FLAG_DISABLED = common dso_local global i32 0, align 4
@ACLListMatchSds = common dso_local global i32 0, align 4
@ACLListFreeSds = common dso_local global i32 0, align 4
@ACLListDupSds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ACLCreateUser(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @Users, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @raxFind(i32 %7, i8* %8, i64 %9)
  %11 = load i64, i64* @raxNotFound, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %72

14:                                               ; preds = %2
  %15 = call %struct.TYPE_5__* @zmalloc(i32 40)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @sdsnewlen(i8* %16, i64 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @USER_FLAG_DISABLED, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = call i8* (...) @listCreate()
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = call i8* (...) @listCreate()
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @ACLListMatchSds, align 4
  %36 = call i32 @listSetMatchMethod(i8* %34, i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @ACLListFreeSds, align 4
  %41 = call i32 @listSetFreeMethod(i8* %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @ACLListDupSds, align 4
  %46 = call i32 @listSetDupMethod(i8* %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @ACLListMatchSds, align 4
  %51 = call i32 @listSetMatchMethod(i8* %49, i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @ACLListFreeSds, align 4
  %56 = call i32 @listSetFreeMethod(i8* %54, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @ACLListDupSds, align 4
  %61 = call i32 @listSetDupMethod(i8* %59, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memset(i32 %64, i32 0, i32 4)
  %66 = load i32, i32* @Users, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = call i32 @raxInsert(i32 %66, i8* %67, i64 %68, %struct.TYPE_5__* %69, i32* null)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %3, align 8
  br label %72

72:                                               ; preds = %14, %13
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %73
}

declare dso_local i64 @raxFind(i32, i8*, i64) #1

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

declare dso_local i32 @sdsnewlen(i8*, i64) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @listSetMatchMethod(i8*, i32) #1

declare dso_local i32 @listSetFreeMethod(i8*, i32) #1

declare dso_local i32 @listSetDupMethod(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @raxInsert(i32, i8*, i64, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
