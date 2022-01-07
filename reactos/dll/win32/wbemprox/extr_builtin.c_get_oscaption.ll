; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_oscaption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_oscaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@get_oscaption.windowsW = internal constant [18 x i8] c"Microsoft Windows ", align 16
@get_oscaption.win2000W = internal constant [18 x i8] c"2000 Professional\00", align 16
@get_oscaption.win2003W = internal constant [29 x i8] c"Server 2003 Standard Edition\00", align 16
@get_oscaption.winxpW = internal constant [16 x i8] c"XP Professional\00", align 16
@get_oscaption.winxp64W = internal constant [28 x i8] c"XP Professional x64 Edition\00", align 16
@get_oscaption.vistaW = internal constant [15 x i8] c"Vista Ultimate\00", align 1
@get_oscaption.win2008W = internal constant [21 x i8] c"Server 2008 Standard\00", align 16
@get_oscaption.win7W = internal constant [15 x i8] c"7 Professional\00", align 1
@get_oscaption.win2008r2W = internal constant [24 x i8] c"Server 2008 R2 Standard\00", align 16
@get_oscaption.win8W = internal constant [6 x i8] c"8 Pro\00", align 1
@get_oscaption.win81W = internal constant [8 x i8] c"8.1 Pro\00", align 1
@get_oscaption.win10W = internal constant [7 x i8] c"10 Pro\00", align 1
@VER_NT_WORKSTATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @get_oscaption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_oscaption(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @get_oscaption.windowsW, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 1
  %10 = add i64 %9, 29
  %11 = trunc i64 %10 to i32
  %12 = call i8* @heap_alloc(i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %182

15:                                               ; preds = %1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @get_oscaption.windowsW, i64 0, i64 0), i32 18)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 @memcpy(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @get_oscaption.win10W, i64 0, i64 0), i32 7)
  br label %180

33:                                               ; preds = %22, %15
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @memcpy(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_oscaption.win8W, i64 0, i64 0), i32 6)
  br label %179

49:                                               ; preds = %38, %33
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i32 @memcpy(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_oscaption.win81W, i64 0, i64 0), i32 8)
  br label %178

65:                                               ; preds = %54, %49
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VER_NT_WORKSTATION, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = call i32 @memcpy(i8* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_oscaption.win7W, i64 0, i64 0), i32 15)
  br label %93

87:                                               ; preds = %75
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = call i32 @memcpy(i8* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @get_oscaption.win2008r2W, i64 0, i64 0), i32 24)
  br label %93

93:                                               ; preds = %87, %81
  br label %177

94:                                               ; preds = %70, %65
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 6
  br i1 %98, label %99, label %123

99:                                               ; preds = %94
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VER_NT_WORKSTATION, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @memcpy(i8* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_oscaption.vistaW, i64 0, i64 0), i32 15)
  br label %122

116:                                              ; preds = %104
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = call i32 @memcpy(i8* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @get_oscaption.win2008W, i64 0, i64 0), i32 21)
  br label %122

122:                                              ; preds = %116, %110
  br label %176

123:                                              ; preds = %99, %94
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 5
  br i1 %127, label %128, label %152

128:                                              ; preds = %123
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %152

133:                                              ; preds = %128
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VER_NT_WORKSTATION, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i8*, i8** %5, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @memcpy(i8* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_oscaption.winxp64W, i64 0, i64 0), i32 28)
  br label %151

145:                                              ; preds = %133
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = call i32 @memcpy(i8* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @get_oscaption.win2003W, i64 0, i64 0), i32 29)
  br label %151

151:                                              ; preds = %145, %139
  br label %175

152:                                              ; preds = %128, %123
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = call i32 @memcpy(i8* %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_oscaption.winxpW, i64 0, i64 0), i32 16)
  br label %174

168:                                              ; preds = %157, %152
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = call i32 @memcpy(i8* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @get_oscaption.win2000W, i64 0, i64 0), i32 18)
  br label %174

174:                                              ; preds = %168, %162
  br label %175

175:                                              ; preds = %174, %151
  br label %176

176:                                              ; preds = %175, %122
  br label %177

177:                                              ; preds = %176, %93
  br label %178

178:                                              ; preds = %177, %59
  br label %179

179:                                              ; preds = %178, %43
  br label %180

180:                                              ; preds = %179, %27
  %181 = load i8*, i8** %5, align 8
  store i8* %181, i8** %2, align 8
  br label %182

182:                                              ; preds = %180, %14
  %183 = load i8*, i8** %2, align 8
  ret i8* %183
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
