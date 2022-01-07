; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_evict.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpack_decoder = type { i64, i64, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpack_decoder*)* @hpack_decode_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpack_decode_evict(%struct.hpack_decoder* %0) #0 {
  %2 = alloca %struct.hpack_decoder*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hpack_decoder* %0, %struct.hpack_decoder** %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %9 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %7
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %18 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %24 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @strlen(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %31 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %35, %36
  %38 = add i64 %37, 1
  %39 = call i64 @strlen(i64 %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %41 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = add i64 32, %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %44, %45
  %47 = icmp uge i64 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* %4, align 8
  %51 = add i64 32, %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %55 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %7

60:                                               ; preds = %7
  %61 = load i64, i64* %3, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %3, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %70 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @free(i64 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %64

79:                                               ; preds = %64
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %82 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %86 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %89 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load %struct.hpack_decoder*, %struct.hpack_decoder** %2, align 8
  %94 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = mul i64 8, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memmove(i64* %87, i64* %92, i32 %97)
  br label %99

99:                                               ; preds = %79, %60
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
