; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_append_hdr.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_append_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpack_decoder = type { i8**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpack_decoder*, i8*, i8*)* @hpack_append_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpack_append_hdr(%struct.hpack_decoder* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpack_decoder*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  store %struct.hpack_decoder* %0, %struct.hpack_decoder** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %16, %17
  %19 = add i64 %18, 2
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %83

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  %29 = call i32 @memcpy(i8* %25, i8* %26, i64 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = call i32 @memcpy(i8* %33, i8* %34, i64 %36)
  %38 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %39 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %42 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8** @realloc(i8** %40, i32 %47)
  store i8** %48, i8*** %11, align 8
  %49 = load i8**, i8*** %11, align 8
  %50 = icmp eq i8** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %24
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @free(i8* %52)
  store i32 -1, i32* %4, align 4
  br label %83

54:                                               ; preds = %24
  %55 = load i8**, i8*** %11, align 8
  %56 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %57 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %56, i32 0, i32 0
  store i8** %55, i8*** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %60 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %63 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %61, i64 %65
  store i8* %58, i8** %66, align 8
  %67 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %68 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 32, %71
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %76 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.hpack_decoder*, %struct.hpack_decoder** %5, align 8
  %82 = call i32 @hpack_decode_evict(%struct.hpack_decoder* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %54, %51, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hpack_decode_evict(%struct.hpack_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
