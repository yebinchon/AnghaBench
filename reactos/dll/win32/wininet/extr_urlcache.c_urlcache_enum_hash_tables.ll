; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_enum_hash_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_enum_hash_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"looking at hash table number %d\0A\00", align 1
@HASH_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Error: not right signature (\22%.4s\22) - expected \22HASH\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"hash table number %d found\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64*, %struct.TYPE_10__**)* @urlcache_enum_hash_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_enum_hash_tables(%struct.TYPE_9__* %0, i64* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_10__* @urlcache_get_hash_table(%struct.TYPE_9__* %8, i32 %11)
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %13, align 8
  br label %14

14:                                               ; preds = %55, %3
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %55

32:                                               ; preds = %18
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HASH_SIGNATURE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = ptrtoint i64* %44 to i32
  %46 = call i32 @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %55

50:                                               ; preds = %32
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %40, %31
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_10__* @urlcache_get_hash_table(%struct.TYPE_9__* %56, i32 %60)
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %62, align 8
  br label %14

63:                                               ; preds = %14
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %50
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_10__* @urlcache_get_hash_table(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
