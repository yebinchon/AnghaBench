; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_groupchatpeers.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_groupchatpeers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"[g]+ no peers left in group.\00", align 1
@TOX_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@__const.print_groupchatpeers.header = private unnamed_addr constant [6 x i8] c"[g]+ \00", align 1
@STRING_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%i: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_groupchatpeers(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca [6 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @tox_group_number_peers(i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %117

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 @new_lines(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %117

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* @TOX_MAX_NAME_LENGTH, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %6, align 8
  %35 = mul nuw i64 %31, %33
  %36 = alloca i32, i64 %35, align 16
  store i64 %31, i64* %7, align 8
  store i64 %33, i64* %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %9, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = bitcast i32* %36 to i32**
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @tox_group_get_names(i32* %40, i32 %41, i32** %42, i64* %39, i32 %43)
  %45 = bitcast [6 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.print_groupchatpeers.header, i32 0, i32 0), i64 6, i1 false)
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i32, i32* @STRING_LENGTH, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %14, align 8
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %52 = call i32 @strcpy(i8* %50, i8* %51)
  %53 = load i64, i64* %13, align 8
  store i64 %53, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %111, %29
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %39, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %16, align 8
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @sprintf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %68, %69
  %71 = add i64 %70, 3
  %72 = load i32, i32* @STRING_LENGTH, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp uge i64 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %58
  %76 = call i32 @new_lines_mark(i8* %50, i32 1)
  %77 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %78 = call i32 @strcpy(i8* %50, i8* %77)
  %79 = load i64, i64* %13, align 8
  store i64 %79, i64* %15, align 8
  br label %80

80:                                               ; preds = %75, %58
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i8, i8* %50, i64 %81
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %84 = call i32 @strcpy(i8* %82, i8* %83)
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i8, i8* %50, i64 %88
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %91, %33
  %93 = getelementptr inbounds i32, i32* %36, i64 %92
  %94 = bitcast i32* %93 to i8*
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @memcpy(i8* %89, i8* %94, i64 %95)
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %15, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %15, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %80
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i8, i8* %50, i64 %105
  %107 = call i32 @strcpy(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i64, i64* %15, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %104, %80
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %54

114:                                              ; preds = %54
  %115 = call i32 @new_lines_mark(i8* %50, i32 1)
  %116 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %116)
  br label %117

117:                                              ; preds = %114, %27, %23
  ret void
}

declare dso_local i32 @tox_group_number_peers(i32*, i32) #1

declare dso_local i32 @new_lines(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tox_group_get_names(i32*, i32, i32**, i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @new_lines_mark(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
