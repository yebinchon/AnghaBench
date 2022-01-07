; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seafile_write_chunk.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seafile_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i8* }

@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error: failed to encrypt block\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_write_chunk(i8* %0, i32 %1, %struct.TYPE_4__* %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %22 = call i32* @g_checksum_new(i32 %21)
  store i32* %22, i32** %14, align 8
  store i32 20, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %25
  store i8* null, i8** %17, align 8
  store i32 -1, i32* %18, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @seafile_encrypt(i8** %17, i32* %18, i8* %33, i32 %36, i32* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = call i32 @seaf_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @g_checksum_free(i32* %43)
  store i32 -1, i32* %7, align 4
  br label %125

45:                                               ; preds = %30
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = call i8* (...) @gen_uuid()
  store i8* %51, i8** %19, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i8*, i8** %19, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = call i32 @g_checksum_update(i32* %52, i8* %53, i32 %55)
  %57 = load i8*, i8** %19, align 8
  %58 = call i32 @g_free(i8* %57)
  br label %64

59:                                               ; preds = %45
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @g_checksum_update(i32* %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %50
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @g_checksum_get_digest(i32* %65, i32* %66, i32* %15)
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @do_write_chunk(i8* %71, i32 %72, i32* %73, i8* %74, i32 %75)
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %70, %64
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @g_free(i8* %78)
  br label %121

80:                                               ; preds = %25, %6
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = call i8* (...) @gen_uuid()
  store i8* %86, i8** %20, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = call i32 @g_checksum_update(i32* %87, i8* %88, i32 %90)
  %92 = load i8*, i8** %20, align 8
  %93 = call i32 @g_free(i8* %92)
  br label %103

94:                                               ; preds = %80
  %95 = load i32*, i32** %14, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @g_checksum_update(i32* %95, i8* %98, i32 %101)
  br label %103

103:                                              ; preds = %94, %85
  %104 = load i32*, i32** %14, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @g_checksum_get_digest(i32* %104, i32* %105, i32* %15)
  %107 = load i64, i64* %13, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @do_write_chunk(i8* %110, i32 %111, i32* %112, i8* %115, i32 %118)
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %109, %103
  br label %121

121:                                              ; preds = %120, %77
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @g_checksum_free(i32* %122)
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %41
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @seafile_encrypt(i8**, i32*, i8*, i32, i32*) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @g_checksum_free(i32*) #1

declare dso_local i8* @gen_uuid(...) #1

declare dso_local i32 @g_checksum_update(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_checksum_get_digest(i32*, i32*, i32*) #1

declare dso_local i32 @do_write_chunk(i8*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
