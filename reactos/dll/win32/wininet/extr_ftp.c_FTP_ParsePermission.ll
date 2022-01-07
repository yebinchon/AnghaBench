; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ParsePermission.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ParsePermission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i16 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @FTP_ParsePermission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTP_ParsePermission(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %6, align 4
  store i16 0, i16* %7, align 2
  store i32 1, i32* %8, align 4
  store i32 9, i32* %9, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 100
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 45
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 108
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %167

29:                                               ; preds = %21, %16, %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 100
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %158, %29
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %155 [
    i32 1, label %39
    i32 2, label %52
    i32 3, label %65
    i32 4, label %78
    i32 5, label %91
    i32 6, label %104
    i32 7, label %117
    i32 8, label %130
    i32 9, label %143
  ]

39:                                               ; preds = %37
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 114
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = shl i32 %46, 8
  %48 = load i16, i16* %7, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %7, align 2
  br label %155

52:                                               ; preds = %37
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 119
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = shl i32 %59, 7
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %7, align 2
  br label %155

65:                                               ; preds = %37
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 120
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = shl i32 %72, 6
  %74 = load i16, i16* %7, align 2
  %75 = zext i16 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %7, align 2
  br label %155

78:                                               ; preds = %37
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 114
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = shl i32 %85, 5
  %87 = load i16, i16* %7, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %7, align 2
  br label %155

91:                                               ; preds = %37
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 5
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 119
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = shl i32 %98, 4
  %100 = load i16, i16* %7, align 2
  %101 = zext i16 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %7, align 2
  br label %155

104:                                              ; preds = %37
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 6
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 120
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = shl i32 %111, 3
  %113 = load i16, i16* %7, align 2
  %114 = zext i16 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i16
  store i16 %116, i16* %7, align 2
  br label %155

117:                                              ; preds = %37
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 7
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 114
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = shl i32 %124, 2
  %126 = load i16, i16* %7, align 2
  %127 = zext i16 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %7, align 2
  br label %155

130:                                              ; preds = %37
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 119
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = shl i32 %137, 1
  %139 = load i16, i16* %7, align 2
  %140 = zext i16 %139 to i32
  %141 = or i32 %140, %138
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %7, align 2
  br label %155

143:                                              ; preds = %37
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 9
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 120
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 0
  %151 = load i16, i16* %7, align 2
  %152 = zext i16 %151 to i32
  %153 = or i32 %152, %150
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %7, align 2
  br label %155

155:                                              ; preds = %37, %143, %130, %117, %104, %91, %78, %65, %52, %39
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %37, label %162

162:                                              ; preds = %158
  %163 = load i16, i16* %7, align 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i16 %163, i16* %165, align 4
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %26
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
