; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_strverscmp.c_strverscmp.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_strverscmp.c_strverscmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strverscmp.next_state = internal constant [12 x i32] [i32 129, i32 130, i32 128, i32 129, i32 130, i32 130, i32 129, i32 131, i32 131, i32 129, i32 131, i32 128], align 16
@strverscmp.result_type = internal constant [36 x i32] [i32 133, i32 133, i32 133, i32 133, i32 132, i32 133, i32 133, i32 133, i32 133, i32 133, i32 -1, i32 -1, i32 1, i32 132, i32 132, i32 1, i32 132, i32 132, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 1, i32 1, i32 -1, i32 133, i32 133, i32 -1, i32 133, i32 133], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strverscmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8, i8* %19, align 1
  store i8 %21, i8* %8, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %9, align 1
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 48
  %28 = zext i1 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = call i64 @isdigit(i8 zeroext %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = add nsw i32 %28, %32
  %34 = add nsw i32 129, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %48, %18
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %116

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [12 x i32], [12 x i32]* @strverscmp.next_state, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  %55 = load i8, i8* %53, align 1
  store i8 %55, i8* %8, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %9, align 1
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 48
  %62 = zext i1 %61 to i32
  %63 = load i8, i8* %8, align 1
  %64 = call i64 @isdigit(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = add nsw i32 %62, %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %35

70:                                               ; preds = %35
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 3
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 48
  %76 = zext i1 %75 to i32
  %77 = load i8, i8* %9, align 1
  %78 = call i64 @isdigit(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = add nsw i32 %76, %80
  %82 = add nsw i32 %72, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [36 x i32], [36 x i32]* @strverscmp.result_type, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  switch i32 %86, label %114 [
    i32 133, label %87
    i32 132, label %89
  ]

87:                                               ; preds = %70
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  br label %116

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  %93 = load i8, i8* %91, align 1
  %94 = call i64 @isdigit(i8 zeroext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  %99 = load i8, i8* %97, align 1
  %100 = call i64 @isdigit(i8 zeroext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %116

103:                                              ; preds = %96
  br label %90

104:                                              ; preds = %90
  %105 = load i8*, i8** %7, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @isdigit(i8 zeroext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %11, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ -1, %109 ], [ %111, %110 ]
  store i32 %113, i32* %3, align 4
  br label %116

114:                                              ; preds = %70
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %112, %102, %87, %46, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
