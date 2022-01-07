; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_lex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i32, i8* }

@L_WORD = common dso_local global i32 0, align 4
@L_NWORD = common dso_local global i32 0, align 4
@L_CCLASS = common dso_local global i32 0, align 4
@L_NCCLASS = common dso_local global i32 0, align 4
@L_CHAR = common dso_local global i32 0, align 4
@L_REF = common dso_local global i32 0, align 4
@L_NC = common dso_local global i32 0, align 4
@L_PLA = common dso_local global i32 0, align 4
@L_NLA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cstate*)* @lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex(%struct.cstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cstate*, align 8
  %4 = alloca i32, align 4
  store %struct.cstate* %0, %struct.cstate** %3, align 8
  %5 = load %struct.cstate*, %struct.cstate** %3, align 8
  %6 = call i32 @nextrune(%struct.cstate* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %104

9:                                                ; preds = %1
  %10 = load %struct.cstate*, %struct.cstate** %3, align 8
  %11 = getelementptr inbounds %struct.cstate, %struct.cstate* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %57 [
    i32 98, label %13
    i32 66, label %15
    i32 100, label %17
    i32 115, label %23
    i32 119, label %29
    i32 68, label %35
    i32 83, label %41
    i32 87, label %47
    i32 48, label %53
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @L_WORD, align 4
  store i32 %14, i32* %2, align 4
  br label %187

15:                                               ; preds = %9
  %16 = load i32, i32* @L_NWORD, align 4
  store i32 %16, i32* %2, align 4
  br label %187

17:                                               ; preds = %9
  %18 = load %struct.cstate*, %struct.cstate** %3, align 8
  %19 = call i32 @newcclass(%struct.cstate* %18)
  %20 = load %struct.cstate*, %struct.cstate** %3, align 8
  %21 = call i32 @addranges_d(%struct.cstate* %20)
  %22 = load i32, i32* @L_CCLASS, align 4
  store i32 %22, i32* %2, align 4
  br label %187

23:                                               ; preds = %9
  %24 = load %struct.cstate*, %struct.cstate** %3, align 8
  %25 = call i32 @newcclass(%struct.cstate* %24)
  %26 = load %struct.cstate*, %struct.cstate** %3, align 8
  %27 = call i32 @addranges_s(%struct.cstate* %26)
  %28 = load i32, i32* @L_CCLASS, align 4
  store i32 %28, i32* %2, align 4
  br label %187

29:                                               ; preds = %9
  %30 = load %struct.cstate*, %struct.cstate** %3, align 8
  %31 = call i32 @newcclass(%struct.cstate* %30)
  %32 = load %struct.cstate*, %struct.cstate** %3, align 8
  %33 = call i32 @addranges_w(%struct.cstate* %32)
  %34 = load i32, i32* @L_CCLASS, align 4
  store i32 %34, i32* %2, align 4
  br label %187

35:                                               ; preds = %9
  %36 = load %struct.cstate*, %struct.cstate** %3, align 8
  %37 = call i32 @newcclass(%struct.cstate* %36)
  %38 = load %struct.cstate*, %struct.cstate** %3, align 8
  %39 = call i32 @addranges_d(%struct.cstate* %38)
  %40 = load i32, i32* @L_NCCLASS, align 4
  store i32 %40, i32* %2, align 4
  br label %187

41:                                               ; preds = %9
  %42 = load %struct.cstate*, %struct.cstate** %3, align 8
  %43 = call i32 @newcclass(%struct.cstate* %42)
  %44 = load %struct.cstate*, %struct.cstate** %3, align 8
  %45 = call i32 @addranges_s(%struct.cstate* %44)
  %46 = load i32, i32* @L_NCCLASS, align 4
  store i32 %46, i32* %2, align 4
  br label %187

47:                                               ; preds = %9
  %48 = load %struct.cstate*, %struct.cstate** %3, align 8
  %49 = call i32 @newcclass(%struct.cstate* %48)
  %50 = load %struct.cstate*, %struct.cstate** %3, align 8
  %51 = call i32 @addranges_w(%struct.cstate* %50)
  %52 = load i32, i32* @L_NCCLASS, align 4
  store i32 %52, i32* %2, align 4
  br label %187

53:                                               ; preds = %9
  %54 = load %struct.cstate*, %struct.cstate** %3, align 8
  %55 = getelementptr inbounds %struct.cstate, %struct.cstate* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @L_CHAR, align 4
  store i32 %56, i32* %2, align 4
  br label %187

57:                                               ; preds = %9
  %58 = load %struct.cstate*, %struct.cstate** %3, align 8
  %59 = getelementptr inbounds %struct.cstate, %struct.cstate* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %102

62:                                               ; preds = %57
  %63 = load %struct.cstate*, %struct.cstate** %3, align 8
  %64 = getelementptr inbounds %struct.cstate, %struct.cstate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sle i32 %65, 57
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load %struct.cstate*, %struct.cstate** %3, align 8
  %69 = getelementptr inbounds %struct.cstate, %struct.cstate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %69, align 8
  %72 = load %struct.cstate*, %struct.cstate** %3, align 8
  %73 = getelementptr inbounds %struct.cstate, %struct.cstate* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 48
  br i1 %77, label %78, label %100

78:                                               ; preds = %67
  %79 = load %struct.cstate*, %struct.cstate** %3, align 8
  %80 = getelementptr inbounds %struct.cstate, %struct.cstate* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 57
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load %struct.cstate*, %struct.cstate** %3, align 8
  %87 = getelementptr inbounds %struct.cstate, %struct.cstate* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 10
  %90 = load %struct.cstate*, %struct.cstate** %3, align 8
  %91 = getelementptr inbounds %struct.cstate, %struct.cstate* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %89, %95
  %97 = sub nsw i32 %96, 48
  %98 = load %struct.cstate*, %struct.cstate** %3, align 8
  %99 = getelementptr inbounds %struct.cstate, %struct.cstate* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %85, %78, %67
  %101 = load i32, i32* @L_REF, align 4
  store i32 %101, i32* %2, align 4
  br label %187

102:                                              ; preds = %62, %57
  %103 = load i32, i32* @L_CHAR, align 4
  store i32 %103, i32* %2, align 4
  br label %187

104:                                              ; preds = %1
  %105 = load %struct.cstate*, %struct.cstate** %3, align 8
  %106 = getelementptr inbounds %struct.cstate, %struct.cstate* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %112 [
    i32 0, label %108
    i32 36, label %108
    i32 41, label %108
    i32 42, label %108
    i32 43, label %108
    i32 46, label %108
    i32 63, label %108
    i32 94, label %108
    i32 124, label %108
  ]

108:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104, %104
  %109 = load %struct.cstate*, %struct.cstate** %3, align 8
  %110 = getelementptr inbounds %struct.cstate, %struct.cstate* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %2, align 4
  br label %187

112:                                              ; preds = %104
  %113 = load %struct.cstate*, %struct.cstate** %3, align 8
  %114 = getelementptr inbounds %struct.cstate, %struct.cstate* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 123
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.cstate*, %struct.cstate** %3, align 8
  %119 = call i32 @lexcount(%struct.cstate* %118)
  store i32 %119, i32* %2, align 4
  br label %187

120:                                              ; preds = %112
  %121 = load %struct.cstate*, %struct.cstate** %3, align 8
  %122 = getelementptr inbounds %struct.cstate, %struct.cstate* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 91
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.cstate*, %struct.cstate** %3, align 8
  %127 = call i32 @lexclass(%struct.cstate* %126)
  store i32 %127, i32* %2, align 4
  br label %187

128:                                              ; preds = %120
  %129 = load %struct.cstate*, %struct.cstate** %3, align 8
  %130 = getelementptr inbounds %struct.cstate, %struct.cstate* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 40
  br i1 %132, label %133, label %185

133:                                              ; preds = %128
  %134 = load %struct.cstate*, %struct.cstate** %3, align 8
  %135 = getelementptr inbounds %struct.cstate, %struct.cstate* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 63
  br i1 %140, label %141, label %184

141:                                              ; preds = %133
  %142 = load %struct.cstate*, %struct.cstate** %3, align 8
  %143 = getelementptr inbounds %struct.cstate, %struct.cstate* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 58
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load %struct.cstate*, %struct.cstate** %3, align 8
  %151 = getelementptr inbounds %struct.cstate, %struct.cstate* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8* %153, i8** %151, align 8
  %154 = load i32, i32* @L_NC, align 4
  store i32 %154, i32* %2, align 4
  br label %187

155:                                              ; preds = %141
  %156 = load %struct.cstate*, %struct.cstate** %3, align 8
  %157 = getelementptr inbounds %struct.cstate, %struct.cstate* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 61
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load %struct.cstate*, %struct.cstate** %3, align 8
  %165 = getelementptr inbounds %struct.cstate, %struct.cstate* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  store i8* %167, i8** %165, align 8
  %168 = load i32, i32* @L_PLA, align 4
  store i32 %168, i32* %2, align 4
  br label %187

169:                                              ; preds = %155
  %170 = load %struct.cstate*, %struct.cstate** %3, align 8
  %171 = getelementptr inbounds %struct.cstate, %struct.cstate* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 33
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load %struct.cstate*, %struct.cstate** %3, align 8
  %179 = getelementptr inbounds %struct.cstate, %struct.cstate* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  store i8* %181, i8** %179, align 8
  %182 = load i32, i32* @L_NLA, align 4
  store i32 %182, i32* %2, align 4
  br label %187

183:                                              ; preds = %169
  br label %184

184:                                              ; preds = %183, %133
  store i32 40, i32* %2, align 4
  br label %187

185:                                              ; preds = %128
  %186 = load i32, i32* @L_CHAR, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %184, %177, %163, %149, %125, %117, %108, %102, %100, %53, %47, %41, %35, %29, %23, %17, %15, %13
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @nextrune(%struct.cstate*) #1

declare dso_local i32 @newcclass(%struct.cstate*) #1

declare dso_local i32 @addranges_d(%struct.cstate*) #1

declare dso_local i32 @addranges_s(%struct.cstate*) #1

declare dso_local i32 @addranges_w(%struct.cstate*) #1

declare dso_local i32 @lexcount(%struct.cstate*) #1

declare dso_local i32 @lexclass(%struct.cstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
