; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_https_headers_recv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_https_headers_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_tls = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vlc_tls*, i64*)* @vlc_https_headers_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_https_headers_recv(%struct.vlc_tls* %0, i64* noalias %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vlc_tls*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.vlc_tls* %0, %struct.vlc_tls** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %9, align 8
  br label %12

12:                                               ; preds = %59, %2
  %13 = load i8*, i8** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @vlc_http_can_read(i8* %13, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* %6, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 2048
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ugt i64 %26, 65536
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %80

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i8* @realloc(i8* %30, i64 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp eq i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %80

39:                                               ; preds = %29
  %40 = load i8*, i8** %11, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.vlc_tls*, %struct.vlc_tls** %4, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @vlc_tls_Read(%struct.vlc_tls* %49, i8* %52, i64 %53, i32 1)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %80

59:                                               ; preds = %41
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %7, align 8
  br label %12

63:                                               ; preds = %12
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %64, %65
  %67 = icmp uge i64 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i64*, i64** %5, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i64, i64* %7, align 8
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %63
  %79 = load i8*, i8** %9, align 8
  store i8* %79, i8** %3, align 8
  br label %83

80:                                               ; preds = %58, %38, %28
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @free(i8* %81)
  store i8* null, i8** %3, align 8
  br label %83

83:                                               ; preds = %80, %78
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

declare dso_local i64 @vlc_http_can_read(i8*, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_tls_Read(%struct.vlc_tls*, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
