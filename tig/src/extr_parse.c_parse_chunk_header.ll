; ModuleID = '/home/carl/AnghaBench/tig/src/extr_parse.c_parse_chunk_header.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_parse.c_parse_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_header = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"@@@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_chunk_header(%struct.chunk_header* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chunk_header*, align 8
  %5 = alloca i8*, align 8
  store %struct.chunk_header* %0, %struct.chunk_header** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %7 = call i32 @memset(%struct.chunk_header* %6, i32 0, i32 16)
  %8 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %9 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %12 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @prefixcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = sub nsw i32 %18, 1
  %20 = load i8*, i8** %5, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %5, align 8
  br label %34

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @prefixcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 45)
  store i8* %29, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27, %23
  store i32 0, i32* %3, align 4
  br label %61

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %36 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i64 @parse_ulong(i8** %5, i32* %37, i8 signext 45, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %42 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i64 @parse_ulong(i8** %5, i32* %43, i8 signext 44, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %48 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i64 @parse_ulong(i8** %5, i32* %49, i8 signext 43, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.chunk_header*, %struct.chunk_header** %4, align 8
  %54 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i64 @parse_ulong(i8** %5, i32* %55, i8 signext 44, i32 0)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %52, %46, %40, %34
  %59 = phi i1 [ false, %46 ], [ false, %40 ], [ false, %34 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.chunk_header*, i32, i32) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @parse_ulong(i8**, i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
