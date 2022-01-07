; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_adns_submit_reverse_any.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_adns_submit_reverse_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }

@adns_qf_search = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_submit_reverse_any(i32 %0, %struct.sockaddr* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [100 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32, i32* @adns_qf_search, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %13, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* @ENOSYS, align 4
  store i32 %32, i32* %8, align 4
  br label %84

33:                                               ; preds = %7
  %34 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %35 = bitcast %struct.sockaddr* %34 to %struct.sockaddr_in*
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = add nsw i32 %39, 16
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp sgt i32 %42, 100
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 16
  %48 = add nsw i32 %47, 1
  %49 = call i8* @malloc(i32 %48)
  store i8* %49, i8** %17, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %8, align 4
  br label %84

54:                                               ; preds = %44
  %55 = load i8*, i8** %17, align 8
  store i8* %55, i8** %18, align 8
  br label %58

56:                                               ; preds = %33
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  store i8* %57, i8** %17, align 8
  store i8* null, i8** %18, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %16, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %16, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 zeroext %62, i8 zeroext %65, i8 zeroext %68, i8 zeroext %71, i8* %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %17, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @adns_submit(i32 %74, i8* %75, i32 %76, i32 %77, i8* %78, i32* %79)
  store i32 %80, i32* %20, align 4
  %81 = load i8*, i8** %18, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %58, %52, %31
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @adns_submit(i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
