; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_finish.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_9__*)* @hash_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hash_finish(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gcry_md_putc(i32 %15, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @gcry_md_write(i32 %20, i32* %24, i64 4)
  br label %101

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %99

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = call i32 @gcry_md_putc(i32 %32, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gcry_md_putc(i32 %38, i64 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @gcry_md_putc(i32 %43, i64 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @gcry_md_putc(i32 %48, i64 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @gcry_md_write(i32 %53, i32* %58, i64 2)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @scalar_number(i32* %64, i32 2)
  store i64 %65, i64* %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @gcry_md_write(i32 %66, i32* %71, i64 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @gcry_md_putc(i32 %74, i64 4)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @gcry_md_putc(i32 %76, i64 255)
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 6
  store i64 %79, i64* %6, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i64, i64* %6, align 8
  %82 = lshr i64 %81, 24
  %83 = and i64 %82, 255
  %84 = call i32 @gcry_md_putc(i32 %80, i64 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i64, i64* %6, align 8
  %87 = lshr i64 %86, 16
  %88 = and i64 %87, 255
  %89 = call i32 @gcry_md_putc(i32 %85, i64 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i64, i64* %6, align 8
  %92 = lshr i64 %91, 8
  %93 = and i64 %92, 255
  %94 = call i32 @gcry_md_putc(i32 %90, i64 %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i64, i64* %6, align 8
  %97 = and i64 %96, 255
  %98 = call i32 @gcry_md_putc(i32 %95, i64 %97)
  br label %100

99:                                               ; preds = %26
  store i32* null, i32** %3, align 8
  br label %127

100:                                              ; preds = %31
  br label %101

101:                                              ; preds = %100, %14
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @gcry_md_final(i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @gcry_md_read(i32 %104, i64 %107)
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %7, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @gcry_md_get_algo_dlen(i64 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32* @malloc(i32 %114)
  store i32* %115, i32** %9, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %101
  %119 = load i32*, i32** %9, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @memcpy(i32* %119, i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %101
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @gcry_md_close(i32 %124)
  %126 = load i32*, i32** %9, align 8
  store i32* %126, i32** %3, align 8
  br label %127

127:                                              ; preds = %123, %99
  %128 = load i32*, i32** %3, align 8
  ret i32* %128
}

declare dso_local i32 @gcry_md_putc(i32, i64) #1

declare dso_local i32 @gcry_md_write(i32, i32*, i64) #1

declare dso_local i64 @scalar_number(i32*, i32) #1

declare dso_local i32 @gcry_md_final(i32) #1

declare dso_local i64 @gcry_md_read(i32, i64) #1

declare dso_local i32 @gcry_md_get_algo_dlen(i64) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @gcry_md_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
