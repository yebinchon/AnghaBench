; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_intf.c_StripPasswords.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_intf.c_StripPasswords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"password=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"******\00", align 1
@__const.StripPasswords.delim = private unnamed_addr constant [3 x i8] c",}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @StripPasswords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StripPasswords(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %2, align 8
  br label %104

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = mul i32 %28, %29
  %31 = add i32 %27, %30
  %32 = add i32 %31, 1
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %104

37:                                               ; preds = %25
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %101, %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcat(i8* %47, i8* %48)
  br label %102

50:                                               ; preds = %41
  %51 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %7, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  %55 = bitcast [3 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.StripPasswords.delim, i32 0, i32 0), i64 3, i1 false)
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 39
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 34
  br i1 %64, label %65, label %71

65:                                               ; preds = %60, %50
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  %68 = load i8, i8* %66, align 1
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %68, i8* %69, align 1
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @strncat(i8* %72, i8* %73, i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcat(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %95, %71
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %89 = call i8* @strpbrk(i8* %87, i8* %88)
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  store i8* %93, i8** %2, align 8
  br label %104

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 92
  br i1 %100, label %85, label %101

101:                                              ; preds = %95
  br label %41

102:                                              ; preds = %46
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %2, align 8
  br label %104

104:                                              ; preds = %102, %92, %36, %22
  %105 = load i8*, i8** %2, align 8
  ret i8* %105
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
