; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_bmpcache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_bmpcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [90 x i8] c"BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d,bpp=%d,size=%d,pad1=%d,bufsize=%d,pad2=%d,rs=%d,fs=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to decompress bitmap data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @process_bmpcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bmpcache(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 65535, i32* %18, align 4
  store i32 65535, i32* %17, align 4
  store i32 65535, i32* %16, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @in_uint8(i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %19, align 4
  %25 = call i32 @in_uint8(i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @in_uint8(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @in_uint8(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @in_uint8(i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @in_uint16_le(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @in_uint16_le(i32 %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %7, align 4
  br label %63

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @in_uint16_le(i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @in_uint16_le(i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @in_uint16_le(i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @in_uint16_le(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %48
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @in_uint8p(i32 %64, i32* %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @DEBUG(i8* %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %84, %85
  %87 = call i64 @malloc(i32 %86)
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %63
  br label %117

92:                                               ; preds = %63
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @bitmap_decompress(i32* %93, i32 %94, i32 %95, i32* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %92
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @ui_create_bitmap(%struct.TYPE_5__* %102, i32 %103, i32 %104, i32* %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @cache_put_bitmap(%struct.TYPE_5__* %107, i32 %108, i32 %109, i32 %110)
  br label %114

112:                                              ; preds = %92
  %113 = call i32 @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %101
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @free(i32* %115)
  br label %117

117:                                              ; preds = %114, %91
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @bitmap_decompress(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ui_create_bitmap(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @cache_put_bitmap(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
