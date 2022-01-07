; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_add_to_entries.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_add_to_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@ONION_ANNOUNCE_MAX_ENTRIES = common dso_local global i32 0, align 4
@ONION_ANNOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@ONION_RETURN_3 = common dso_local global i32 0, align 4
@cmp_public_key = common dso_local global i32 0, align 4
@cmp_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*, i32*, i32*)* @add_to_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_entries(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @in_entries(%struct.TYPE_7__* %14, i32* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %43

19:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @ONION_ANNOUNCE_MAX_ENTRIES, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ONION_ANNOUNCE_TIMEOUT, align 4
  %34 = call i64 @is_timeout(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %13, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %20

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @id_closest(i32* %51, i32* %52, i32 %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %134

67:                                               ; preds = %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %78 = call i32 @memcpy(i32 %75, i32* %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %79, i32* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* @ONION_RETURN_3, align 4
  %97 = call i32 @memcpy(i32 %94, i32* %95, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %108 = call i32 @memcpy(i32 %105, i32* %106, i32 %107)
  %109 = call i32 (...) @unix_time()
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 4
  %117 = load i32, i32* @cmp_public_key, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %124 = call i32 @memcpy(i32 %117, i32* %122, i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* @ONION_ANNOUNCE_MAX_ENTRIES, align 4
  %129 = load i32, i32* @cmp_entry, align 4
  %130 = call i32 @qsort(%struct.TYPE_8__* %127, i32 %128, i32 4, i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @in_entries(%struct.TYPE_7__* %131, i32* %132)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %67, %66
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @in_entries(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i32 @id_closest(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @qsort(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
