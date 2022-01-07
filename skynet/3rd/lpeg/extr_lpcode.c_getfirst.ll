; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_getfirst.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_getfirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32 }

@i = common dso_local global i64 0, align 8
@fullset = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*)* @getfirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfirst(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  br label %17

17:                                               ; preds = %138, %125, %79, %3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %194 [
    i32 138, label %21
    i32 129, label %21
    i32 142, label %21
    i32 128, label %25
    i32 136, label %39
    i32 137, label %47
    i32 130, label %74
    i32 133, label %104
    i32 139, label %125
    i32 135, label %125
    i32 132, label %125
    i32 131, label %128
    i32 140, label %138
    i32 143, label %141
    i32 134, label %163
    i32 141, label %173
  ]

21:                                               ; preds = %17, %17, %17
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = call i32 @tocharset(%struct.TYPE_15__* %22, %struct.TYPE_16__* %23)
  store i32 0, i32* %4, align 4
  br label %196

25:                                               ; preds = %17
  %26 = load i64, i64* @i, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @i, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @i, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  %38 = call i32 @loopset(i64 %26, i32 %32)
  store i32 1, i32* %4, align 4
  br label %196

39:                                               ; preds = %17
  %40 = load i64, i64* @i, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @i, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 0, i32* %45, align 4
  %46 = call i32 @loopset(i64 %40, i32 0)
  store i32 0, i32* %4, align 4
  br label %196

47:                                               ; preds = %17
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = call i32 @getfirst(%struct.TYPE_15__* %49, %struct.TYPE_16__* %50, %struct.TYPE_16__* %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = call %struct.TYPE_15__* @sib2(%struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = call i32 @getfirst(%struct.TYPE_15__* %54, %struct.TYPE_16__* %55, %struct.TYPE_16__* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i64, i64* @i, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @i, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @i, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %62
  store i32 %69, i32* %67, align 4
  %70 = call i32 @loopset(i64 %57, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %196

74:                                               ; preds = %17
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %75)
  %77 = call i32 @nullable(%struct.TYPE_15__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %80)
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %5, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fullset, align 8
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %6, align 8
  br label %17

83:                                               ; preds = %74
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = call %struct.TYPE_15__* @sib2(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = call i32 @getfirst(%struct.TYPE_15__* %85, %struct.TYPE_16__* %86, %struct.TYPE_16__* %11)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = call i32 @getfirst(%struct.TYPE_15__* %89, %struct.TYPE_16__* %11, %struct.TYPE_16__* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %196

95:                                               ; preds = %83
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %98, 2
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 2, i32* %4, align 4
  br label %196

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %196

104:                                              ; preds = %17
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = call i32 @getfirst(%struct.TYPE_15__* %106, %struct.TYPE_16__* %107, %struct.TYPE_16__* %108)
  %110 = load i64, i64* @i, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @i, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @i, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %116
  store i32 %123, i32* %121, align 4
  %124 = call i32 @loopset(i64 %110, i32 %123)
  store i32 1, i32* %4, align 4
  br label %196

125:                                              ; preds = %17, %17, %17
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %126)
  store %struct.TYPE_15__* %127, %struct.TYPE_15__** %5, align 8
  br label %17

128:                                              ; preds = %17
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fullset, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = call i32 @getfirst(%struct.TYPE_15__* %130, %struct.TYPE_16__* %131, %struct.TYPE_16__* %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 2, i32* %4, align 4
  br label %196

137:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %196

138:                                              ; preds = %17
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = call %struct.TYPE_15__* @sib2(%struct.TYPE_15__* %139)
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %5, align 8
  br label %17

141:                                              ; preds = %17
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = call i32 @getfirst(%struct.TYPE_15__* %143, %struct.TYPE_16__* %144, %struct.TYPE_16__* %145)
  store i32 %146, i32* %15, align 4
  %147 = load i64, i64* @i, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @i, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @i, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %153
  store i32 %160, i32* %158, align 4
  %161 = call i32 @loopset(i64 %147, i32 %160)
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %4, align 4
  br label %196

163:                                              ; preds = %17
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %167 = call i32 @tocharset(%struct.TYPE_15__* %165, %struct.TYPE_16__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %171 = call i32 @cs_complement(%struct.TYPE_16__* %170)
  store i32 1, i32* %4, align 4
  br label %196

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %17, %172
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = call %struct.TYPE_15__* @sib1(%struct.TYPE_15__* %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %178 = call i32 @getfirst(%struct.TYPE_15__* %175, %struct.TYPE_16__* %176, %struct.TYPE_16__* %177)
  store i32 %178, i32* %16, align 4
  %179 = load i64, i64* @i, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* @i, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @i, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 %185, i32* %190, align 4
  %191 = call i32 @loopset(i64 %179, i32 %185)
  %192 = load i32, i32* %16, align 4
  %193 = or i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %196

194:                                              ; preds = %17
  %195 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %173, %169, %141, %137, %136, %104, %102, %101, %94, %47, %39, %25, %21
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @tocharset(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @loopset(i64, i32) #1

declare dso_local %struct.TYPE_15__* @sib1(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @sib2(%struct.TYPE_15__*) #1

declare dso_local i32 @nullable(%struct.TYPE_15__*) #1

declare dso_local i32 @cs_complement(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
