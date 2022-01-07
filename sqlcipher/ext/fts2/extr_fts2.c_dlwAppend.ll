; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_dlwAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_dlwAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@VARINT_MAX = common dso_local global i32 0, align 4
@DL_DOCIDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i64, i64)* @dlwAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlwAppend(%struct.TYPE_3__* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i32, i32* @VARINT_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @getVarint(i8* %21, i64* %11)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DL_DOCIDS, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i1 [ false, %26 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %5
  %39 = phi i1 [ true, %5 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @putVarint(i8* %20, i64 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ASSERT_VALID_DOCLIST(i64 %50, i8* %51, i32 %52, i64* %16)
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp eq i64 %54, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %38
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @dataBufferAppend2(i32 %69, i8* %20, i32 %70, i8* %74, i32 %77)
  br label %85

79:                                               ; preds = %38
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @dataBufferAppend(i32 %82, i8* %20, i32 %83)
  br label %85

85:                                               ; preds = %79, %66
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %89)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getVarint(i8*, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @putVarint(i8*, i64) #2

declare dso_local i32 @ASSERT_VALID_DOCLIST(i64, i8*, i32, i64*) #2

declare dso_local i32 @dataBufferAppend2(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @dataBufferAppend(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
