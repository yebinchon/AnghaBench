; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_next_.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_next_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@CTOK_OROR = common dso_local global i8 0, align 1
@CTOK_ANDAND = common dso_local global i8 0, align 1
@CTOK_EQ = common dso_local global i8 0, align 1
@CTOK_NE = common dso_local global i8 0, align 1
@CTOK_LE = common dso_local global i8 0, align 1
@CTOK_SHL = common dso_local global i8 0, align 1
@CTOK_GE = common dso_local global i8 0, align 1
@CTOK_SHR = common dso_local global i8 0, align 1
@CTOK_DEREF = common dso_local global i8 0, align 1
@CTOK_EOF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_11__*)* @cp_next_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @cp_next_(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = call i32 @lj_buf_reset(i32* %6)
  br label %8

8:                                                ; preds = %166, %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @lj_char_isident(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @lj_char_isdigit(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call signext i8 @cp_number(%struct.TYPE_11__* %21)
  %23 = sext i8 %22 to i32
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call signext i8 @cp_ident(%struct.TYPE_11__* %25)
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %2, align 1
  br label %167

31:                                               ; preds = %8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %158 [
    i32 10, label %35
    i32 13, label %35
    i32 32, label %38
    i32 9, label %38
    i32 11, label %38
    i32 12, label %38
    i32 34, label %41
    i32 39, label %41
    i32 47, label %44
    i32 124, label %63
    i32 38, label %73
    i32 61, label %83
    i32 33, label %93
    i32 60, label %103
    i32 62, label %123
    i32 45, label %143
    i32 36, label %153
    i32 0, label %156
  ]

35:                                               ; preds = %31, %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = call i32 @cp_newline(%struct.TYPE_11__* %36)
  br label %38

38:                                               ; preds = %31, %31, %31, %31, %35
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call signext i8 @cp_get(%struct.TYPE_11__* %39)
  br label %166

41:                                               ; preds = %31, %31
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = call signext i8 @cp_string(%struct.TYPE_11__* %42)
  store i8 %43, i8* %2, align 1
  br label %167

44:                                               ; preds = %31
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call signext i8 @cp_get(%struct.TYPE_11__* %45)
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = call i32 @cp_comment_c(%struct.TYPE_11__* %50)
  br label %62

52:                                               ; preds = %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = call i32 @cp_comment_cpp(%struct.TYPE_11__* %58)
  br label %61

60:                                               ; preds = %52
  store i8 47, i8* %2, align 1
  br label %167

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %49
  br label %166

63:                                               ; preds = %31
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = call signext i8 @cp_get(%struct.TYPE_11__* %64)
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 124
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i8 124, i8* %2, align 1
  br label %167

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = call signext i8 @cp_get(%struct.TYPE_11__* %70)
  %72 = load i8, i8* @CTOK_OROR, align 1
  store i8 %72, i8* %2, align 1
  br label %167

73:                                               ; preds = %31
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call signext i8 @cp_get(%struct.TYPE_11__* %74)
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 38
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i8 38, i8* %2, align 1
  br label %167

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = call signext i8 @cp_get(%struct.TYPE_11__* %80)
  %82 = load i8, i8* @CTOK_ANDAND, align 1
  store i8 %82, i8* %2, align 1
  br label %167

83:                                               ; preds = %31
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = call signext i8 @cp_get(%struct.TYPE_11__* %84)
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 61
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i8 61, i8* %2, align 1
  br label %167

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = call signext i8 @cp_get(%struct.TYPE_11__* %90)
  %92 = load i8, i8* @CTOK_EQ, align 1
  store i8 %92, i8* %2, align 1
  br label %167

93:                                               ; preds = %31
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = call signext i8 @cp_get(%struct.TYPE_11__* %94)
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 61
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i8 33, i8* %2, align 1
  br label %167

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = call signext i8 @cp_get(%struct.TYPE_11__* %100)
  %102 = load i8, i8* @CTOK_NE, align 1
  store i8 %102, i8* %2, align 1
  br label %167

103:                                              ; preds = %31
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = call signext i8 @cp_get(%struct.TYPE_11__* %104)
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 61
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = call signext i8 @cp_get(%struct.TYPE_11__* %109)
  %111 = load i8, i8* @CTOK_LE, align 1
  store i8 %111, i8* %2, align 1
  br label %167

112:                                              ; preds = %103
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 60
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = call signext i8 @cp_get(%struct.TYPE_11__* %118)
  %120 = load i8, i8* @CTOK_SHL, align 1
  store i8 %120, i8* %2, align 1
  br label %167

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121
  store i8 60, i8* %2, align 1
  br label %167

123:                                              ; preds = %31
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = call signext i8 @cp_get(%struct.TYPE_11__* %124)
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 61
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = call signext i8 @cp_get(%struct.TYPE_11__* %129)
  %131 = load i8, i8* @CTOK_GE, align 1
  store i8 %131, i8* %2, align 1
  br label %167

132:                                              ; preds = %123
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 62
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = call signext i8 @cp_get(%struct.TYPE_11__* %138)
  %140 = load i8, i8* @CTOK_SHR, align 1
  store i8 %140, i8* %2, align 1
  br label %167

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141
  store i8 62, i8* %2, align 1
  br label %167

143:                                              ; preds = %31
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = call signext i8 @cp_get(%struct.TYPE_11__* %144)
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 62
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i8 45, i8* %2, align 1
  br label %167

149:                                              ; preds = %143
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = call signext i8 @cp_get(%struct.TYPE_11__* %150)
  %152 = load i8, i8* @CTOK_DEREF, align 1
  store i8 %152, i8* %2, align 1
  br label %167

153:                                              ; preds = %31
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = call signext i8 @cp_param(%struct.TYPE_11__* %154)
  store i8 %155, i8* %2, align 1
  br label %167

156:                                              ; preds = %31
  %157 = load i8, i8* @CTOK_EOF, align 1
  store i8 %157, i8* %2, align 1
  br label %167

158:                                              ; preds = %31
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %4, align 1
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = call signext i8 @cp_get(%struct.TYPE_11__* %163)
  %165 = load i8, i8* %4, align 1
  store i8 %165, i8* %2, align 1
  br label %167

166:                                              ; preds = %62, %38
  br label %8

167:                                              ; preds = %158, %156, %153, %149, %148, %142, %137, %128, %122, %117, %108, %99, %98, %89, %88, %79, %78, %69, %68, %60, %41, %28
  %168 = load i8, i8* %2, align 1
  ret i8 %168
}

declare dso_local i32 @lj_buf_reset(i32*) #1

declare dso_local i64 @lj_char_isident(i32) #1

declare dso_local i64 @lj_char_isdigit(i32) #1

declare dso_local signext i8 @cp_number(%struct.TYPE_11__*) #1

declare dso_local signext i8 @cp_ident(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_newline(%struct.TYPE_11__*) #1

declare dso_local signext i8 @cp_get(%struct.TYPE_11__*) #1

declare dso_local signext i8 @cp_string(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_comment_c(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_comment_cpp(%struct.TYPE_11__*) #1

declare dso_local signext i8 @cp_param(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
