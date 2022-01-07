; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_parse_cookie.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_parse_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*)* @parse_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @parse_cookie(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strchrW(i8* %7, i8 signext 61)
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlenW(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br label %35

35:                                               ; preds = %26, %23
  %36 = phi i1 [ false, %23 ], [ %34, %26 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %23

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %147

44:                                               ; preds = %40
  %45 = call %struct.TYPE_6__* @heap_alloc_zero(i32 24)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %4, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %147

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = call i32 @list_init(i32* %50)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i8* @heap_alloc(i32 %56)
  %58 = bitcast i8* %57 to i64*
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i64* %58, i64** %60, align 8
  %61 = icmp ne i64* %58, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %48
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = call i32 @heap_free(%struct.TYPE_6__* %63)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %147

65:                                               ; preds = %48
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(i64* %68, i8* %69, i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  %83 = load i8, i8* %81, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 61
  br i1 %85, label %86, label %145

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %92, %86
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  br label %87

95:                                               ; preds = %87
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @strlenW(i8* %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %112, %95
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 32
  br label %110

110:                                              ; preds = %101, %98
  %111 = phi i1 [ false, %98 ], [ %109, %101 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %6, align 4
  br label %98

115:                                              ; preds = %110
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = call i8* @heap_alloc(i32 %120)
  %122 = bitcast i8* %121 to i64*
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i64* %122, i64** %124, align 8
  %125 = icmp ne i64* %122, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %115
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = call i32 @free_cookie(%struct.TYPE_6__* %127)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %147

129:                                              ; preds = %115
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 1
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i64* %132, i8* %133, i32 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %129, %65
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %146, %struct.TYPE_6__** %2, align 8
  br label %147

147:                                              ; preds = %145, %126, %62, %47, %43
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %148
}

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local %struct.TYPE_6__* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @free_cookie(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
