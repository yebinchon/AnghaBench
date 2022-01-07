; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_sa_errorstr.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_sa_errorstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sa_errorstr.errstr = internal global [32 x i8] zeroinitializer, align 16
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"path doesn't exist\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"name in use\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"bad path\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"no such group\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"configuration error\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"system error\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"no permission\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"no such property\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"invalid name\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"invalid protocol\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"operation not allowed\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"bad property value\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"invalid security type\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"security type not found\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"property value conflict\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"invalid path\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"operation not supported\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"property not valid for group\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"not shared\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"no such resource\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"resource name required\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"errors from multiple protocols\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"path is a subpath of share\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"path is parent of a share\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"protocol requires a section\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"properties not found\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"section not found\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"passwords must be encrypted\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"path or file is already shared\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"unknown %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sa_errorstr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %107 [
    i32 137, label %5
    i32 142, label %8
    i32 147, label %11
    i32 157, label %14
    i32 161, label %17
    i32 143, label %20
    i32 158, label %23
    i32 129, label %26
    i32 130, label %29
    i32 146, label %32
    i32 159, label %35
    i32 141, label %38
    i32 156, label %41
    i32 154, label %44
    i32 151, label %47
    i32 160, label %50
    i32 153, label %53
    i32 138, label %56
    i32 128, label %59
    i32 150, label %62
    i32 155, label %65
    i32 148, label %68
    i32 133, label %71
    i32 149, label %74
    i32 140, label %77
    i32 132, label %80
    i32 152, label %83
    i32 134, label %86
    i32 135, label %89
    i32 144, label %92
    i32 145, label %95
    i32 139, label %98
    i32 136, label %101
    i32 131, label %104
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TEXT_DOMAIN, align 4
  %7 = call i8* @dgettext(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %3, align 8
  br label %112

8:                                                ; preds = %1
  %9 = load i32, i32* @TEXT_DOMAIN, align 4
  %10 = call i8* @dgettext(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %112

11:                                               ; preds = %1
  %12 = load i32, i32* @TEXT_DOMAIN, align 4
  %13 = call i8* @dgettext(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  br label %112

14:                                               ; preds = %1
  %15 = load i32, i32* @TEXT_DOMAIN, align 4
  %16 = call i8* @dgettext(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %112

17:                                               ; preds = %1
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  br label %112

20:                                               ; preds = %1
  %21 = load i32, i32* @TEXT_DOMAIN, align 4
  %22 = call i8* @dgettext(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %22, i8** %3, align 8
  br label %112

23:                                               ; preds = %1
  %24 = load i32, i32* @TEXT_DOMAIN, align 4
  %25 = call i8* @dgettext(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  br label %112

26:                                               ; preds = %1
  %27 = load i32, i32* @TEXT_DOMAIN, align 4
  %28 = call i8* @dgettext(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %112

29:                                               ; preds = %1
  %30 = load i32, i32* @TEXT_DOMAIN, align 4
  %31 = call i8* @dgettext(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  br label %112

32:                                               ; preds = %1
  %33 = load i32, i32* @TEXT_DOMAIN, align 4
  %34 = call i8* @dgettext(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  br label %112

35:                                               ; preds = %1
  %36 = load i32, i32* @TEXT_DOMAIN, align 4
  %37 = call i8* @dgettext(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  br label %112

38:                                               ; preds = %1
  %39 = load i32, i32* @TEXT_DOMAIN, align 4
  %40 = call i8* @dgettext(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i8* %40, i8** %3, align 8
  br label %112

41:                                               ; preds = %1
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i8* @dgettext(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i8* %43, i8** %3, align 8
  br label %112

44:                                               ; preds = %1
  %45 = load i32, i32* @TEXT_DOMAIN, align 4
  %46 = call i8* @dgettext(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  store i8* %46, i8** %3, align 8
  br label %112

47:                                               ; preds = %1
  %48 = load i32, i32* @TEXT_DOMAIN, align 4
  %49 = call i8* @dgettext(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i8* %49, i8** %3, align 8
  br label %112

50:                                               ; preds = %1
  %51 = load i32, i32* @TEXT_DOMAIN, align 4
  %52 = call i8* @dgettext(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  store i8* %52, i8** %3, align 8
  br label %112

53:                                               ; preds = %1
  %54 = load i32, i32* @TEXT_DOMAIN, align 4
  %55 = call i8* @dgettext(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  store i8* %55, i8** %3, align 8
  br label %112

56:                                               ; preds = %1
  %57 = load i32, i32* @TEXT_DOMAIN, align 4
  %58 = call i8* @dgettext(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  store i8* %58, i8** %3, align 8
  br label %112

59:                                               ; preds = %1
  %60 = load i32, i32* @TEXT_DOMAIN, align 4
  %61 = call i8* @dgettext(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  store i8* %61, i8** %3, align 8
  br label %112

62:                                               ; preds = %1
  %63 = load i32, i32* @TEXT_DOMAIN, align 4
  %64 = call i8* @dgettext(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  store i8* %64, i8** %3, align 8
  br label %112

65:                                               ; preds = %1
  %66 = load i32, i32* @TEXT_DOMAIN, align 4
  %67 = call i8* @dgettext(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i8* %67, i8** %3, align 8
  br label %112

68:                                               ; preds = %1
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i8* @dgettext(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i8* %70, i8** %3, align 8
  br label %112

71:                                               ; preds = %1
  %72 = load i32, i32* @TEXT_DOMAIN, align 4
  %73 = call i8* @dgettext(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  store i8* %73, i8** %3, align 8
  br label %112

74:                                               ; preds = %1
  %75 = load i32, i32* @TEXT_DOMAIN, align 4
  %76 = call i8* @dgettext(i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  store i8* %76, i8** %3, align 8
  br label %112

77:                                               ; preds = %1
  %78 = load i32, i32* @TEXT_DOMAIN, align 4
  %79 = call i8* @dgettext(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  store i8* %79, i8** %3, align 8
  br label %112

80:                                               ; preds = %1
  %81 = load i32, i32* @TEXT_DOMAIN, align 4
  %82 = call i8* @dgettext(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  store i8* %82, i8** %3, align 8
  br label %112

83:                                               ; preds = %1
  %84 = load i32, i32* @TEXT_DOMAIN, align 4
  %85 = call i8* @dgettext(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  store i8* %85, i8** %3, align 8
  br label %112

86:                                               ; preds = %1
  %87 = load i32, i32* @TEXT_DOMAIN, align 4
  %88 = call i8* @dgettext(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  store i8* %88, i8** %3, align 8
  br label %112

89:                                               ; preds = %1
  %90 = load i32, i32* @TEXT_DOMAIN, align 4
  %91 = call i8* @dgettext(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0))
  store i8* %91, i8** %3, align 8
  br label %112

92:                                               ; preds = %1
  %93 = load i32, i32* @TEXT_DOMAIN, align 4
  %94 = call i8* @dgettext(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  store i8* %94, i8** %3, align 8
  br label %112

95:                                               ; preds = %1
  %96 = load i32, i32* @TEXT_DOMAIN, align 4
  %97 = call i8* @dgettext(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  store i8* %97, i8** %3, align 8
  br label %112

98:                                               ; preds = %1
  %99 = load i32, i32* @TEXT_DOMAIN, align 4
  %100 = call i8* @dgettext(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  store i8* %100, i8** %3, align 8
  br label %112

101:                                              ; preds = %1
  %102 = load i32, i32* @TEXT_DOMAIN, align 4
  %103 = call i8* @dgettext(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0))
  store i8* %103, i8** %3, align 8
  br label %112

104:                                              ; preds = %1
  %105 = load i32, i32* @TEXT_DOMAIN, align 4
  %106 = call i8* @dgettext(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0))
  store i8* %106, i8** %3, align 8
  br label %112

107:                                              ; preds = %1
  %108 = load i32, i32* @TEXT_DOMAIN, align 4
  %109 = call i8* @dgettext(i32 %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0))
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @sa_errorstr.errstr, i64 0, i64 0), i32 32, i8* %109, i32 %110)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @sa_errorstr.errstr, i64 0, i64 0), i8** %3, align 8
  br label %112

112:                                              ; preds = %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %113 = load i8*, i8** %3, align 8
  ret i8* %113
}

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
