; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_concat.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@TM_CONCAT = common dso_local global i32 0, align 4
@MAX_SIZET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_concat(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i32 @lua_assert(i32 %14)
  br label %16

16:                                               ; preds = %185, %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 2
  %22 = call i64 @ttisstring(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 2
  %27 = call i64 @ttisnumber(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %16
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i64 @tostring(%struct.TYPE_15__* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 2
  %43 = load i32, i32* @TM_CONCAT, align 4
  %44 = call i32 @call_binTM(%struct.TYPE_15__* %36, i32 %38, i32 %40, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 2
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @luaG_concaterror(%struct.TYPE_15__* %47, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %35
  br label %174

54:                                               ; preds = %29
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call %struct.TYPE_16__* @tsvalue(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 2
  %65 = call i64 @tostring(%struct.TYPE_15__* %62, i32 %64)
  br label %173

66:                                               ; preds = %54
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %67, 2
  %69 = call i64 @ttisstring(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 2
  %74 = call %struct.TYPE_16__* @tsvalue(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 2
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @setobjs2s(%struct.TYPE_15__* %79, i32 %81, i32 %83)
  br label %172

85:                                               ; preds = %71, %66
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call %struct.TYPE_16__* @tsvalue(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %7, align 8
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %127, %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sub nsw i32 %99, 1
  %101 = call i64 @tostring(%struct.TYPE_15__* %96, i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %95, %91
  %104 = phi i1 [ false, %91 ], [ %102, %95 ]
  br i1 %104, label %105, label %130

105:                                              ; preds = %103
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = call %struct.TYPE_16__* @tsvalue(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* @MAX_SIZET, align 4
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %115, 1
  %117 = load i64, i64* %7, align 8
  %118 = sub i64 %116, %117
  %119 = icmp uge i64 %113, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = call i32 @luaG_runerror(%struct.TYPE_15__* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %105
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %91

130:                                              ; preds = %103
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = call %struct.TYPE_14__* @G(%struct.TYPE_15__* %132)
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %7, align 8
  %136 = call i8* @luaZ_openspace(%struct.TYPE_15__* %131, i32* %134, i64 %135)
  store i8* %136, i8** %8, align 8
  store i64 0, i64* %7, align 8
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %158, %130
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call %struct.TYPE_16__* @tsvalue(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %11, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @svalue(i32 %150)
  %152 = load i64, i64* %11, align 8
  %153 = mul i64 %152, 1
  %154 = call i32 @memcpy(i8* %147, i32 %151, i64 %153)
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %7, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %138
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %9, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %138, label %162

162:                                              ; preds = %158
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @luaS_newlstr(%struct.TYPE_15__* %167, i8* %168, i64 %169)
  %171 = call i32 @setsvalue2s(%struct.TYPE_15__* %163, i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %162, %78
  br label %173

173:                                              ; preds = %172, %61
  br label %174

174:                                              ; preds = %173, %53
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* %4, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %4, align 4
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %16, label %188

188:                                              ; preds = %185
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ttisstring(i32) #1

declare dso_local i64 @ttisnumber(i32) #1

declare dso_local i64 @tostring(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @call_binTM(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaG_concaterror(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @tsvalue(i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @luaZ_openspace(%struct.TYPE_15__*, i32*, i64) #1

declare dso_local %struct.TYPE_14__* @G(%struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @svalue(i32) #1

declare dso_local i32 @setsvalue2s(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @luaS_newlstr(%struct.TYPE_15__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
