; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_read_secret_chat.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_read_secret_chat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_secret_chat.s = internal global [1000 x i8] zeroinitializer, align 16
@read_secret_chat.key = internal global [256 x i8] zeroinitializer, align 16
@read_secret_chat.sha = internal global [20 x i8] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@TGLECF_CREATE = common dso_local global i32 0, align 4
@TGLECF_CREATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_secret_chat(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, ...) @read(i32 %18, i32* %5, i32 4)
  %20 = icmp eq i32 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, ...) @read(i32 %23, i32* %6, i32 4)
  %25 = icmp eq i32 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 1000
  br label %33

33:                                               ; preds = %30, %2
  %34 = phi i1 [ false, %2 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, ...) @read(i32 %37, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @read_secret_chat.s, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, ...) @read(i32 %44, i32* %7, i32 4)
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, ...) @read(i32 %49, i32* %8, i32 4)
  %51 = icmp eq i32 %50, 4
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, ...) @read(i32 %54, i32* %9, i32 4)
  %56 = icmp eq i32 %55, 4
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i32, ...) @read(i32 %59, i32* %10, i32 4)
  %61 = icmp eq i32 %60, 4
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, ...) @read(i32 %64, i32* %11, i32 4)
  %66 = icmp eq i32 %65, 4
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i32, ...) @read(i32 %69, i64* %13, i32 8)
  %71 = icmp eq i32 %70, 8
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (i32, ...) @read(i32 %74, i32* %12, i32 4)
  %76 = icmp eq i32 %75, 4
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, ...) @read(i32 %79, i64* %14, i32 8)
  %81 = icmp eq i32 %80, 8
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, ...) @read(i32 %84, [256 x i8]* @read_secret_chat.key, i32 256)
  %86 = icmp eq i32 %85, 256
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, ...) @read(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @read_secret_chat.sha, i64 0, i64 0), i32 20)
  %91 = icmp eq i32 %90, 20
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 1
  br i1 %95, label %96, label %112

96:                                               ; preds = %33
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i32, ...) @read(i32 %97, i32* %15, i32 4)
  %99 = icmp eq i32 %98, 4
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 (i32, ...) @read(i32 %102, i32* %17, i32 4)
  %104 = icmp eq i32 %103, 4
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, ...) @read(i32 %107, i32* %16, i32 4)
  %109 = icmp eq i32 %108, 4
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %96, %33
  %113 = load i32, i32* @TLS, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @TGLECF_CREATE, align 4
  %116 = load i32, i32* @TGLECF_CREATED, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @bl_do_encr_chat(i32 %113, i32 %114, i64* %13, i32* %9, i32* %8, i32* %7, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @read_secret_chat.key, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @read_secret_chat.sha, i64 0, i64 0), i32* %12, i32* %10, i32* %11, i32* %15, i32* %17, i32* %16, i64* %14, i32 %117, i32* null, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @bl_do_encr_chat(i32, i32, i64*, i32*, i32*, i32*, i8*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
