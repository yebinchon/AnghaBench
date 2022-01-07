; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c_exchange.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._getopt_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct._getopt_data*)* @exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exchange(i8** %0, %struct._getopt_data* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct._getopt_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct._getopt_data* %1, %struct._getopt_data** %4, align 8
  %13 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %14 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %17 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %20 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %134, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %135

32:                                               ; preds = %30
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %84, %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  %49 = load i8**, i8*** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8**, i8*** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %57, %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %56, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %67, i64 %71
  store i8* %66, i8** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %75, %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %74, i64 %82
  store i8* %73, i8** %83, align 8
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %44

87:                                               ; preds = %44
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %134

91:                                               ; preds = %32
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %127, %91
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  %100 = load i8**, i8*** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %100, i64 %104
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %8, align 8
  %107 = load i8**, i8*** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %107, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %114, i64 %118
  store i8* %113, i8** %119, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8**, i8*** %3, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %121, i64 %125
  store i8* %120, i8** %126, align 8
  br label %127

127:                                              ; preds = %99
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %95

130:                                              ; preds = %95
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %87
  br label %22

135:                                              ; preds = %30
  %136 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %137 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %140 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %138, %141
  %143 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %144 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %148 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %151 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
