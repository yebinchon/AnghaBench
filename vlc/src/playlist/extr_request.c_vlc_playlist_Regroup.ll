; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_Regroup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_Regroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, i64)* @vlc_playlist_Regroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_playlist_Regroup(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %4, align 8
  br label %164

23:                                               ; preds = %3
  store i64 1, i64* %9, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, 1
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %141, %23
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %144

34:                                               ; preds = %31
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %41, 1
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %139

47:                                               ; preds = %34
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp uge i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %8, align 8
  store i64 0, i64* %13, align 8
  br label %65

65:                                               ; preds = %93, %56
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %74, %75
  %77 = icmp uge i64 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i64, i64* %9, align 8
  %87 = load i64*, i64** %6, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, %86
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %85, %78, %69
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %65

96:                                               ; preds = %65
  br label %128

97:                                               ; preds = %47
  store i64 0, i64* %14, align 8
  br label %98

98:                                               ; preds = %124, %97
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load i64*, i64** %6, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = load i64*, i64** %6, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i64, i64* %9, align 8
  %118 = load i64*, i64** %6, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %117
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %116, %109, %102
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %14, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %14, align 8
  br label %98

127:                                              ; preds = %98
  br label %128

128:                                              ; preds = %127, %96
  %129 = load i64*, i64** %6, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %130, 1
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %12, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @vlc_playlist_Move(i32* %134, i64 %135, i64 %136, i64 %137)
  store i64 1, i64* %9, align 8
  br label %139

139:                                              ; preds = %128, %44
  %140 = load i64, i64* %12, align 8
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %139
  %142 = load i64, i64* %11, align 8
  %143 = add i64 %142, -1
  store i64 %143, i64* %11, align 8
  br label %31

144:                                              ; preds = %31
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %8, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp uge i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %8, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %148, %144
  %158 = load i32*, i32** %5, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @vlc_playlist_Move(i32* %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %8, align 8
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %157, %21
  %165 = load i64, i64* %4, align 8
  ret i64 %165
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_playlist_Move(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
