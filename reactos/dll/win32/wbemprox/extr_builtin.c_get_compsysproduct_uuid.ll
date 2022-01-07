; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_compsysproduct_uuid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_compsysproduct_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"/var/lib/dbus/machine-id\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@compsysproduct_uuidW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_compsysproduct_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_compsysproduct_uuid() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %130

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call i32 @read(i32 %12, i8* %13, i32 32)
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 32
  br i1 %16, label %17, label %127

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @close(i32 %18)
  %20 = call i8* @heap_alloc(i32 37)
  store i8* %20, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8* null, i8** %1, align 8
  br label %133

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp ult i32 %25, 8
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @toupperW(i8 zeroext %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  store i8 45, i8* %43, align 1
  store i32 9, i32* %4, align 4
  br label %44

44:                                               ; preds = %58, %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp ult i32 %45, 13
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call signext i8 @toupperW(i8 zeroext %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %53, i8* %57, align 1
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 13
  store i8 45, i8* %63, align 1
  store i32 14, i32* %4, align 4
  br label %64

64:                                               ; preds = %78, %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp ult i32 %65, 18
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call signext i8 @toupperW(i8 zeroext %72)
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %64

81:                                               ; preds = %64
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 18
  store i8 45, i8* %83, align 1
  store i32 19, i32* %4, align 4
  br label %84

84:                                               ; preds = %98, %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp ult i32 %85, 23
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call signext i8 @toupperW(i8 zeroext %92)
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 23
  store i8 45, i8* %103, align 1
  store i32 24, i32* %4, align 4
  br label %104

104:                                              ; preds = %118, %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp ult i32 %105, 36
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = call signext i8 @toupperW(i8 zeroext %112)
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %4, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %104

121:                                              ; preds = %104
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %6, align 8
  store i8* %126, i8** %1, align 8
  br label %133

127:                                              ; preds = %11
  %128 = load i32, i32* %2, align 4
  %129 = call i32 @close(i32 %128)
  br label %130

130:                                              ; preds = %127, %0
  %131 = load i32, i32* @compsysproduct_uuidW, align 4
  %132 = call i8* @heap_strdupW(i32 %131)
  store i8* %132, i8** %1, align 8
  br label %133

133:                                              ; preds = %130, %121, %22
  %134 = load i8*, i8** %1, align 8
  ret i8* %134
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local signext i8 @toupperW(i8 zeroext) #1

declare dso_local i8* @heap_strdupW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
