; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_general.c_adns_rr_info.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_general.c_adns_rr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, i64 (%struct.TYPE_8__*, i8*)* }
%struct.TYPE_8__ = type { i32, i64 }

@adns_s_unknownrrtype = common dso_local global i64 0, align 8
@adns_s_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@adns_s_nomemory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adns_rr_info(i32 %0, i8** %1, i8** %2, i32* %3, i8* %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_9__* @adns__findtype(i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %14, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load i64, i64* @adns_s_unknownrrtype, align 8
  store i64 %22, i64* %7, align 8
  br label %99

23:                                               ; preds = %6
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %9, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i8**, i8*** %10, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %10, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @adns_s_ok, align 8
  store i64 %51, i64* %7, align 8
  br label %99

52:                                               ; preds = %47
  %53 = call i32 @adns__vbuf_init(%struct.TYPE_8__* %15)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i64 (%struct.TYPE_8__*, i8*)*, i64 (%struct.TYPE_8__*, i8*)** %55, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 %56(%struct.TYPE_8__* %15, i8* %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %96

62:                                               ; preds = %52
  %63 = call i32 @adns__vbuf_append(%struct.TYPE_8__* %15, i32* bitcast ([1 x i8]* @.str to i32*), i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @adns_s_nomemory, align 8
  store i64 %66, i64* %16, align 8
  br label %96

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i64 @strlen(i8* %70)
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = call i8* @realloc(i64 %80, i64 %83)
  %85 = load i8**, i8*** %13, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i8**, i8*** %13, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8**, i8*** %13, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %67
  %95 = load i64, i64* @adns_s_ok, align 8
  store i64 %95, i64* %7, align 8
  br label %99

96:                                               ; preds = %65, %61
  %97 = call i32 @adns__vbuf_free(%struct.TYPE_8__* %15)
  %98 = load i64, i64* %16, align 8
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %96, %94, %50, %21
  %100 = load i64, i64* %7, align 8
  ret i64 %100
}

declare dso_local %struct.TYPE_9__* @adns__findtype(i32) #1

declare dso_local i32 @adns__vbuf_init(%struct.TYPE_8__*) #1

declare dso_local i32 @adns__vbuf_append(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i64, i64) #1

declare dso_local i32 @adns__vbuf_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
